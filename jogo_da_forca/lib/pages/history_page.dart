import 'package:flutter/material.dart';

class HistoryPage extends StatelessWidget {
  final List<String> historico;

  const HistoryPage({super.key, required this.historico});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Histórico de Partidas",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.lightBlue,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            if (historico.isEmpty)
              Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  "Nenhuma Partida Realizada",
                  style: TextStyle(fontSize: 20),
                ),
              )
            else
              ...historico.map(
                (item) => Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(16),
                  margin: EdgeInsets.symmetric(
                    vertical: 5,
                    horizontal: 10,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.blue.shade50,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.lightBlue.shade100),
                  ),
                  child: Text(
                    item,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
