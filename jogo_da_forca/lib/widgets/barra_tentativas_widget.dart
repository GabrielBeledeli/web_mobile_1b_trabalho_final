import 'package:flutter/material.dart';

// Widget responsável por exibir o cartão de tentativas restantes
class BarraTentativasWidget extends StatelessWidget {
  final int quantidadeDeErros;
  final int maximoDeErros;

  const BarraTentativasWidget({
    super.key,
    required this.quantidadeDeErros,
    required this.maximoDeErros,
  });

  @override
  Widget build(BuildContext context) {
    final tentativasRestantes = maximoDeErros - quantidadeDeErros;

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 3),
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.lightBlue.shade100),
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 6, offset: Offset(0, 3)),
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.favorite,
            color: quantidadeDeErros >= 4 ? Colors.red : Colors.lightBlue,
            size: 20,
          ),
          SizedBox(width: 8),
          Text(
            "Tentativas restantes: $tentativasRestantes / $maximoDeErros",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: quantidadeDeErros >= 4 ? Colors.red : Colors.grey[800],
            ),
          ),
        ],
      ),
    );
  }
}
