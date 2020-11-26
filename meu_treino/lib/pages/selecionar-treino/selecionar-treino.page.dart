import 'package:flutter/material.dart';
import '../criar-treino/criar-treino.page.dart';

class SelecionarTreinoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Selecionar Treino'),
      ),
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => CriarTreinoPage()));
        },
      ),
    );
  }
}
