import 'package:flutter/material.dart';
import 'package:meu_treino/pages/criar-treino/rotas.dart';

class InserirNomeScreen extends StatelessWidget {
  InserirNomeScreen({
    @required this.onCancel,
  });

  final VoidCallback onCancel;

  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 40, right: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Nome treino',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                      color: Colors.blue
                    ),
                  ),
                  TextField(
                    style: TextStyle(color: Colors.blueGrey),
                    controller: controller,
                    textInputAction: TextInputAction.done,
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.all(5),
                    ),
                    onSubmitted: (_) => navegarParaExercicios(context),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  FlatButton(
                    child: Text('Cancelar'),
                    onPressed: onCancel,
                    textColor: Colors.pink,
                  ),
                  RaisedButton(
                    textColor: Colors.white,
                    color: Colors.blueAccent,
                    child: Text('Proximo'),
                    onPressed: () => navegarParaExercicios(context),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  void navegarParaExercicios(BuildContext context) {
    Navigator.of(context).pushNamed(Rotas.EXERCICIOS);
  }
}
