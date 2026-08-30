import 'package:flutter/material.dart';

class LetrasDigitadasWidget extends StatelessWidget {
  final Set<String> letrasTentadas;
  final String palavraSorteada;

  const LetrasDigitadasWidget({
    super.key,
    required this.letrasTentadas,
    required this.palavraSorteada,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 108,
      margin: EdgeInsets.symmetric(horizontal: 32, vertical: 3),
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.lightBlue.shade100),
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 6, offset: Offset(0, 3)),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Letras Digitadas:",
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: Colors.grey,
            ),
          ),
          SizedBox(height: 4),
          Expanded(
            child: Center(
              child: letrasTentadas.isEmpty
                  ? Text(
                      "Nenhuma letra digitada",
                      style: TextStyle(fontSize: 13, color: Colors.grey),
                    )
                  : SingleChildScrollView(
                      child: Wrap(
                        alignment: WrapAlignment.center,
                        spacing: 6.0,
                        runSpacing: 4.0,
                          children: letrasTentadas.map((letra) {
                            final acertou = palavraSorteada.contains(letra);
                            return Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 8,
                                vertical: 3,
                              ),
                              decoration: BoxDecoration(
                                color:
                                    acertou
                                        ? Colors.green.shade50
                                        : Colors.grey.shade200,
                                borderRadius: BorderRadius.circular(6),
                                border: Border.all(
                                  color:
                                      acertou
                                          ? Colors.green.shade300
                                          : Colors.grey.shade400,
                                ),
                              ),
                              child: Text(
                                letra,
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                  color:
                                      acertou
                                          ? Colors.green.shade800
                                          : Colors.grey.shade700,
                                ),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
            ),
          ),
        ],
      ),
    );
  }
}
