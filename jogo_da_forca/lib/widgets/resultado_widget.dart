import 'package:flutter/material.dart';

// Widget responsável por exibir o cartão de resultado (Vitória ou Derrota) acima do teclado
class ResultadoWidget extends StatelessWidget {
  final bool foiVitoria;
  final bool foiDerrota;
  final String palavraSorteada;
  final VoidCallback onNovoJogo;

  const ResultadoWidget({
    super.key,
    required this.foiVitoria,
    required this.foiDerrota,
    required this.palavraSorteada,
    required this.onNovoJogo,
  });

  @override
  Widget build(BuildContext context) {
    if (!foiVitoria && !foiDerrota) {
      return SizedBox.shrink();
    }

    final ehVitoria = foiVitoria;
    final titulo = ehVitoria ? "Parabéns! Você Venceu!" : "Fim de Jogo!";
    final mensagem = ehVitoria
        ? "Você adivinhou a palavra $palavraSorteada!"
        : "A palavra correta era $palavraSorteada.";

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: ehVitoria ? Colors.green.shade300 : Colors.red.shade300,
        ),
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 6, offset: Offset(0, 3)),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                ehVitoria
                    ? Icons.emoji_events
                    : Icons.sentiment_very_dissatisfied,
                color: ehVitoria ? Colors.amber : Colors.red,
                size: 24,
              ),
              SizedBox(width: 8),
              Text(
                titulo,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: ehVitoria ? Colors.green.shade800 : Colors.red.shade800,
                ),
              ),
            ],
          ),
          SizedBox(height: 4),
          Text(
            mensagem,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 14, color: Colors.black87),
          ),
          SizedBox(height: 8),
          ElevatedButton(
            onPressed: onNovoJogo,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.lightBlue,
              foregroundColor: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: Text(
              "Novo Jogo",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
