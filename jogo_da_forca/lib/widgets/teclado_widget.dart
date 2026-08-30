import 'package:flutter/material.dart';
import 'package:jogo_da_forca/widgets/button_widget.dart';

class TecladoWidget extends StatelessWidget {
  final Set<String> letrasTentadas;
  final String palavraSorteada;
  final bool foiVitoria;
  final bool foiDerrota;
  final Function(String) onTentarLetra;

  const TecladoWidget({
    super.key,
    required this.letrasTentadas,
    required this.palavraSorteada,
    required this.foiVitoria,
    required this.foiDerrota,
    required this.onTentarLetra,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            ButtonWidget(
              text: 'Q',
              onPressed:
                  letrasTentadas.contains('Q') || foiVitoria || foiDerrota
                  ? null
                  : () {
                      onTentarLetra('Q');
                    },
              color: letrasTentadas.contains('Q')
                  ? (palavraSorteada.contains('Q')
                        ? Colors.green
                        : Colors.grey[300])
                  : Colors.lightBlue,
              textColor: letrasTentadas.contains('Q')
                  ? (palavraSorteada.contains('Q')
                        ? Colors.white
                        : Colors.grey[600])
                  : Colors.white,
            ),
            ButtonWidget(
              text: 'W',
              onPressed:
                  letrasTentadas.contains('W') || foiVitoria || foiDerrota
                  ? null
                  : () {
                      onTentarLetra('W');
                    },
              color: letrasTentadas.contains('W')
                  ? (palavraSorteada.contains('W')
                        ? Colors.green
                        : Colors.grey[300])
                  : Colors.lightBlue,
              textColor: letrasTentadas.contains('W')
                  ? (palavraSorteada.contains('W')
                        ? Colors.white
                        : Colors.grey[600])
                  : Colors.white,
            ),
            ButtonWidget(
              text: 'E',
              onPressed:
                  letrasTentadas.contains('E') || foiVitoria || foiDerrota
                  ? null
                  : () {
                      onTentarLetra('E');
                    },
              color: letrasTentadas.contains('E')
                  ? (palavraSorteada.contains('E')
                        ? Colors.green
                        : Colors.grey[300])
                  : Colors.lightBlue,
              textColor: letrasTentadas.contains('E')
                  ? (palavraSorteada.contains('E')
                        ? Colors.white
                        : Colors.grey[600])
                  : Colors.white,
            ),
            ButtonWidget(
              text: 'R',
              onPressed:
                  letrasTentadas.contains('R') || foiVitoria || foiDerrota
                  ? null
                  : () {
                      onTentarLetra('R');
                    },
              color: letrasTentadas.contains('R')
                  ? (palavraSorteada.contains('R')
                        ? Colors.green
                        : Colors.grey[300])
                  : Colors.lightBlue,
              textColor: letrasTentadas.contains('R')
                  ? (palavraSorteada.contains('R')
                        ? Colors.white
                        : Colors.grey[600])
                  : Colors.white,
            ),
            ButtonWidget(
              text: 'T',
              onPressed:
                  letrasTentadas.contains('T') || foiVitoria || foiDerrota
                  ? null
                  : () {
                      onTentarLetra('T');
                    },
              color: letrasTentadas.contains('T')
                  ? (palavraSorteada.contains('T')
                        ? Colors.green
                        : Colors.grey[300])
                  : Colors.lightBlue,
              textColor: letrasTentadas.contains('T')
                  ? (palavraSorteada.contains('T')
                        ? Colors.white
                        : Colors.grey[600])
                  : Colors.white,
            ),
            ButtonWidget(
              text: 'Y',
              onPressed:
                  letrasTentadas.contains('Y') || foiVitoria || foiDerrota
                  ? null
                  : () {
                      onTentarLetra('Y');
                    },
              color: letrasTentadas.contains('Y')
                  ? (palavraSorteada.contains('Y')
                        ? Colors.green
                        : Colors.grey[300])
                  : Colors.lightBlue,
              textColor: letrasTentadas.contains('Y')
                  ? (palavraSorteada.contains('Y')
                        ? Colors.white
                        : Colors.grey[600])
                  : Colors.white,
            ),
            ButtonWidget(
              text: 'U',
              onPressed:
                  letrasTentadas.contains('U') || foiVitoria || foiDerrota
                  ? null
                  : () {
                      onTentarLetra('U');
                    },
              color: letrasTentadas.contains('U')
                  ? (palavraSorteada.contains('U')
                        ? Colors.green
                        : Colors.grey[300])
                  : Colors.lightBlue,
              textColor: letrasTentadas.contains('U')
                  ? (palavraSorteada.contains('U')
                        ? Colors.white
                        : Colors.grey[600])
                  : Colors.white,
            ),
            ButtonWidget(
              text: 'I',
              onPressed:
                  letrasTentadas.contains('I') || foiVitoria || foiDerrota
                  ? null
                  : () {
                      onTentarLetra('I');
                    },
              color: letrasTentadas.contains('I')
                  ? (palavraSorteada.contains('I')
                        ? Colors.green
                        : Colors.grey[300])
                  : Colors.lightBlue,
              textColor: letrasTentadas.contains('I')
                  ? (palavraSorteada.contains('I')
                        ? Colors.white
                        : Colors.grey[600])
                  : Colors.white,
            ),
            ButtonWidget(
              text: 'O',
              onPressed:
                  letrasTentadas.contains('O') || foiVitoria || foiDerrota
                  ? null
                  : () {
                      onTentarLetra('O');
                    },
              color: letrasTentadas.contains('O')
                  ? (palavraSorteada.contains('O')
                        ? Colors.green
                        : Colors.grey[300])
                  : Colors.lightBlue,
              textColor: letrasTentadas.contains('O')
                  ? (palavraSorteada.contains('O')
                        ? Colors.white
                        : Colors.grey[600])
                  : Colors.white,
            ),
            ButtonWidget(
              text: 'P',
              onPressed:
                  letrasTentadas.contains('P') || foiVitoria || foiDerrota
                  ? null
                  : () {
                      onTentarLetra('P');
                    },
              color: letrasTentadas.contains('P')
                  ? (palavraSorteada.contains('P')
                        ? Colors.green
                        : Colors.grey[300])
                  : Colors.lightBlue,
              textColor: letrasTentadas.contains('P')
                  ? (palavraSorteada.contains('P')
                        ? Colors.white
                        : Colors.grey[600])
                  : Colors.white,
            ),
          ],
        ),
        Row(
          children: [
            ButtonWidget(
              text: 'A',
              onPressed:
                  letrasTentadas.contains('A') || foiVitoria || foiDerrota
                  ? null
                  : () {
                      onTentarLetra('A');
                    },
              color: letrasTentadas.contains('A')
                  ? (palavraSorteada.contains('A')
                        ? Colors.green
                        : Colors.grey[300])
                  : Colors.lightBlue,
              textColor: letrasTentadas.contains('A')
                  ? (palavraSorteada.contains('A')
                        ? Colors.white
                        : Colors.grey[600])
                  : Colors.white,
            ),
            ButtonWidget(
              text: 'S',
              onPressed:
                  letrasTentadas.contains('S') || foiVitoria || foiDerrota
                  ? null
                  : () {
                      onTentarLetra('S');
                    },
              color: letrasTentadas.contains('S')
                  ? (palavraSorteada.contains('S')
                        ? Colors.green
                        : Colors.grey[300])
                  : Colors.lightBlue,
              textColor: letrasTentadas.contains('S')
                  ? (palavraSorteada.contains('S')
                        ? Colors.white
                        : Colors.grey[600])
                  : Colors.white,
            ),
            ButtonWidget(
              text: 'D',
              onPressed:
                  letrasTentadas.contains('D') || foiVitoria || foiDerrota
                  ? null
                  : () {
                      onTentarLetra('D');
                    },
              color: letrasTentadas.contains('D')
                  ? (palavraSorteada.contains('D')
                        ? Colors.green
                        : Colors.grey[300])
                  : Colors.lightBlue,
              textColor: letrasTentadas.contains('D')
                  ? (palavraSorteada.contains('D')
                        ? Colors.white
                        : Colors.grey[600])
                  : Colors.white,
            ),
            ButtonWidget(
              text: 'F',
              onPressed:
                  letrasTentadas.contains('F') || foiVitoria || foiDerrota
                  ? null
                  : () {
                      onTentarLetra('F');
                    },
              color: letrasTentadas.contains('F')
                  ? (palavraSorteada.contains('F')
                        ? Colors.green
                        : Colors.grey[300])
                  : Colors.lightBlue,
              textColor: letrasTentadas.contains('F')
                  ? (palavraSorteada.contains('F')
                        ? Colors.white
                        : Colors.grey[600])
                  : Colors.white,
            ),
            ButtonWidget(
              text: 'G',
              onPressed:
                  letrasTentadas.contains('G') || foiVitoria || foiDerrota
                  ? null
                  : () {
                      onTentarLetra('G');
                    },
              color: letrasTentadas.contains('G')
                  ? (palavraSorteada.contains('G')
                        ? Colors.green
                        : Colors.grey[300])
                  : Colors.lightBlue,
              textColor: letrasTentadas.contains('G')
                  ? (palavraSorteada.contains('G')
                        ? Colors.white
                        : Colors.grey[600])
                  : Colors.white,
            ),
            ButtonWidget(
              text: 'H',
              onPressed:
                  letrasTentadas.contains('H') || foiVitoria || foiDerrota
                  ? null
                  : () {
                      onTentarLetra('H');
                    },
              color: letrasTentadas.contains('H')
                  ? (palavraSorteada.contains('H')
                        ? Colors.green
                        : Colors.grey[300])
                  : Colors.lightBlue,
              textColor: letrasTentadas.contains('H')
                  ? (palavraSorteada.contains('H')
                        ? Colors.white
                        : Colors.grey[600])
                  : Colors.white,
            ),
            ButtonWidget(
              text: 'J',
              onPressed:
                  letrasTentadas.contains('J') || foiVitoria || foiDerrota
                  ? null
                  : () {
                      onTentarLetra('J');
                    },
              color: letrasTentadas.contains('J')
                  ? (palavraSorteada.contains('J')
                        ? Colors.green
                        : Colors.grey[300])
                  : Colors.lightBlue,
              textColor: letrasTentadas.contains('J')
                  ? (palavraSorteada.contains('J')
                        ? Colors.white
                        : Colors.grey[600])
                  : Colors.white,
            ),
            ButtonWidget(
              text: 'K',
              onPressed:
                  letrasTentadas.contains('K') || foiVitoria || foiDerrota
                  ? null
                  : () {
                      onTentarLetra('K');
                    },
              color: letrasTentadas.contains('K')
                  ? (palavraSorteada.contains('K')
                        ? Colors.green
                        : Colors.grey[300])
                  : Colors.lightBlue,
              textColor: letrasTentadas.contains('K')
                  ? (palavraSorteada.contains('K')
                        ? Colors.white
                        : Colors.grey[600])
                  : Colors.white,
            ),
            ButtonWidget(
              text: 'L',
              onPressed:
                  letrasTentadas.contains('L') || foiVitoria || foiDerrota
                  ? null
                  : () {
                      onTentarLetra('L');
                    },
              color: letrasTentadas.contains('L')
                  ? (palavraSorteada.contains('L')
                        ? Colors.green
                        : Colors.grey[300])
                  : Colors.lightBlue,
              textColor: letrasTentadas.contains('L')
                  ? (palavraSorteada.contains('L')
                        ? Colors.white
                        : Colors.grey[600])
                  : Colors.white,
            ),
          ],
        ),
        Row(
          children: [
            ButtonWidget(
              text: 'Z',
              onPressed:
                  letrasTentadas.contains('Z') || foiVitoria || foiDerrota
                  ? null
                  : () {
                      onTentarLetra('Z');
                    },
              color: letrasTentadas.contains('Z')
                  ? (palavraSorteada.contains('Z')
                        ? Colors.green
                        : Colors.grey[300])
                  : Colors.lightBlue,
              textColor: letrasTentadas.contains('Z')
                  ? (palavraSorteada.contains('Z')
                        ? Colors.white
                        : Colors.grey[600])
                  : Colors.white,
            ),
            ButtonWidget(
              text: 'X',
              onPressed:
                  letrasTentadas.contains('X') || foiVitoria || foiDerrota
                  ? null
                  : () {
                      onTentarLetra('X');
                    },
              color: letrasTentadas.contains('X')
                  ? (palavraSorteada.contains('X')
                        ? Colors.green
                        : Colors.grey[300])
                  : Colors.lightBlue,
              textColor: letrasTentadas.contains('X')
                  ? (palavraSorteada.contains('X')
                        ? Colors.white
                        : Colors.grey[600])
                  : Colors.white,
            ),
            ButtonWidget(
              text: 'C',
              onPressed:
                  letrasTentadas.contains('C') || foiVitoria || foiDerrota
                  ? null
                  : () {
                      onTentarLetra('C');
                    },
              color: letrasTentadas.contains('C')
                  ? (palavraSorteada.contains('C')
                        ? Colors.green
                        : Colors.grey[300])
                  : Colors.lightBlue,
              textColor: letrasTentadas.contains('C')
                  ? (palavraSorteada.contains('C')
                        ? Colors.white
                        : Colors.grey[600])
                  : Colors.white,
            ),
            ButtonWidget(
              text: 'V',
              onPressed:
                  letrasTentadas.contains('V') || foiVitoria || foiDerrota
                  ? null
                  : () {
                      onTentarLetra('V');
                    },
              color: letrasTentadas.contains('V')
                  ? (palavraSorteada.contains('V')
                        ? Colors.green
                        : Colors.grey[300])
                  : Colors.lightBlue,
              textColor: letrasTentadas.contains('V')
                  ? (palavraSorteada.contains('V')
                        ? Colors.white
                        : Colors.grey[600])
                  : Colors.white,
            ),
            ButtonWidget(
              text: 'B',
              onPressed:
                  letrasTentadas.contains('B') || foiVitoria || foiDerrota
                  ? null
                  : () {
                      onTentarLetra('B');
                    },
              color: letrasTentadas.contains('B')
                  ? (palavraSorteada.contains('B')
                        ? Colors.green
                        : Colors.grey[300])
                  : Colors.lightBlue,
              textColor: letrasTentadas.contains('B')
                  ? (palavraSorteada.contains('B')
                        ? Colors.white
                        : Colors.grey[600])
                  : Colors.white,
            ),
            ButtonWidget(
              text: 'N',
              onPressed:
                  letrasTentadas.contains('N') || foiVitoria || foiDerrota
                  ? null
                  : () {
                      onTentarLetra('N');
                    },
              color: letrasTentadas.contains('N')
                  ? (palavraSorteada.contains('N')
                        ? Colors.green
                        : Colors.grey[300])
                  : Colors.lightBlue,
              textColor: letrasTentadas.contains('N')
                  ? (palavraSorteada.contains('N')
                        ? Colors.white
                        : Colors.grey[600])
                  : Colors.white,
            ),
            ButtonWidget(
              text: 'M',
              onPressed:
                  letrasTentadas.contains('M') || foiVitoria || foiDerrota
                  ? null
                  : () {
                      onTentarLetra('M');
                    },
              color: letrasTentadas.contains('M')
                  ? (palavraSorteada.contains('M')
                        ? Colors.green
                        : Colors.grey[300])
                  : Colors.lightBlue,
              textColor: letrasTentadas.contains('M')
                  ? (palavraSorteada.contains('M')
                        ? Colors.white
                        : Colors.grey[600])
                  : Colors.white,
            ),
          ],
        ),
      ],
    );
  }
}
