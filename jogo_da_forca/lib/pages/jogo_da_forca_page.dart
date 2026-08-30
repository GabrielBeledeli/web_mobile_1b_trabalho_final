import 'dart:math';
import 'package:flutter/material.dart';
import 'package:jogo_da_forca/pages/history_page.dart';
import 'package:jogo_da_forca/widgets/barra_tentativas_widget.dart';
import 'package:jogo_da_forca/widgets/resultado_widget.dart';
import 'package:jogo_da_forca/widgets/letras_digitadas_widget.dart';
import 'package:jogo_da_forca/widgets/forca_widget.dart';
import 'package:jogo_da_forca/widgets/teclado_widget.dart';

class JogoDaForcaPage extends StatefulWidget {
  const JogoDaForcaPage({super.key});

  @override
  State<JogoDaForcaPage> createState() => _JogoDaForcaPageState();
}

class _JogoDaForcaPageState extends State<JogoDaForcaPage> {
  // Lista fixa de palavras para o jogo
  final List<String> listaDePalavras = [
    'FLUTTER',
    'DVELOPER',
    'DART',
    'TECLADO',
    'PROGRAMACAO',
    'CELULAR',
    'COMPUTADOR',
    'NOTEBOOK',
    'WIDGET',
    'FORCA',
  ];

  late String palavraSorteada;

  late Set<String> letrasTentadas;

  late int quantidadeDeErros;

  late List<String> historico;

  final int maximoDeErros = 6;

  @override
  void initState() {
    super.initState();
    historico = [];
    iniciarNovaPartida();
  }

  // Método para sortear uma nova palavra e reiniciar o estado do jogo
  void iniciarNovaPartida() {
    final random = Random();
    setState(() {
      palavraSorteada = listaDePalavras[random.nextInt(listaDePalavras.length)];
      letrasTentadas = {};
      quantidadeDeErros = 0;
    });
  }

  // Getter que verifica se o jogador adivinhou todas as letras se sim true
  bool get foiVitoria {
    return palavraSorteada
        .split('')
        .every((letra) => letrasTentadas.contains(letra));
  }

  // Getter que verifica se o jogador atingiu o limite de erros se sim true
  bool get foiDerrota {
    return quantidadeDeErros >= maximoDeErros;
  }

  //foiVitoria e foiDerrota esses caras que travam o onPressed do teclado para não chamar a tentarLetra()

  // Método chamado ao clicar em uma letra do teclado
  void tentarLetra(String letra) {
    setState(() {
      letrasTentadas.add(letra);
      if (!palavraSorteada.contains(letra)) {
        quantidadeDeErros++;
      }
    });

    if (foiVitoria) {
      historico.add(
        "🏆 VITÓRIA - Palavra: $palavraSorteada (Erros: $quantidadeDeErros/$maximoDeErros)",
      );
    } else if (foiDerrota) {
      historico.add(
        "❌ DERROTA - Palavra: $palavraSorteada (Erros: $quantidadeDeErros/$maximoDeErros)",
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Jogo da Forca",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.lightBlue,
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            tooltip: "Novo Jogo",
            onPressed: () {
              iniciarNovaPartida();
            },
            icon: const Icon(Icons.refresh),
          ),
          IconButton(
            tooltip: "Histórico",
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => HistoryPage(historico: historico),
                ),
              );
            },
            icon: const Icon(Icons.history),
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 6),
          
          // Widget da barra de tentativas restantes
          BarraTentativasWidget(
            quantidadeDeErros: quantidadeDeErros,
            maximoDeErros: maximoDeErros,
          ),
          
          // Widget das letras digitadas
          LetrasDigitadasWidget(
            letrasTentadas: letrasTentadas,
            palavraSorteada: palavraSorteada,
          ),
          SizedBox(height: 4),
          // Widget da imagem da forca + widget do resultado sobreposto na stack
          Expanded(
            child: Stack(
              alignment: Alignment.center,
              children: [
                ForcaWidget(
                  quantidadeDeErros: quantidadeDeErros,
                  palavraSorteada: palavraSorteada,
                  letrasTentadas: letrasTentadas,
                ),
                // Balão de Resultado (Vitória ou Derrota) sobreposto flutuante
                ResultadoWidget(
                  foiVitoria: foiVitoria,
                  foiDerrota: foiDerrota,
                  palavraSorteada: palavraSorteada,
                  onNovoJogo: iniciarNovaPartida,
                ),
              ],
            ),
          ),
          // Widget do teclado
          Padding(
            padding: EdgeInsets.only(bottom: 36.0),
            child: TecladoWidget(
              letrasTentadas: letrasTentadas,
              palavraSorteada: palavraSorteada,
              foiVitoria: foiVitoria,
              foiDerrota: foiDerrota,
              onTentarLetra: tentarLetra,
            ),
          ),
        ],
      ),
    );
  }
}
