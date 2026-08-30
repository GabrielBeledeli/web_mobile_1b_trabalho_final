import 'package:flutter/material.dart';

class ForcaWidget extends StatelessWidget {
  final int quantidadeDeErros;
  final String palavraSorteada;
  final Set<String> letrasTentadas;

  const ForcaWidget({
    super.key,
    required this.quantidadeDeErros,
    required this.palavraSorteada,
    required this.letrasTentadas,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AspectRatio(
        aspectRatio: 1200 / 1080,
        // stack para exibir a iamgem da forca corresponde a quantidade de erros e a palavra a ser adivinhada
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned.fill(
              child: Image.asset(
                'assets/images/forca_$quantidadeDeErros.png',
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              bottom: 25,
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: palavraSorteada.split('').map((letra) { // map para 
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 3.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        // Letra revelada se já foi acertada, ou espaço em branco
                        Text(
                          letrasTentadas.contains(letra)
                              ? letra
                              : ' ',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 2),
                        // Imagem da linha sublinhada line.png sempre exibida
                        Image.asset(
                          'assets/images/line.png',
                          width: 26,
                          fit: BoxFit.contain,
                        ),
                      ],
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
