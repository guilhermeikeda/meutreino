import 'package:flutter/material.dart';

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
        child: Column(
          children: [
            TextField(
              controller: controller,
              autofocus: true,
              textInputAction: TextInputAction.done,
              decoration: const InputDecoration(
                labelText: 'Nome do treino',
                contentPadding: EdgeInsets.all(8),
              ),
              onSubmitted: (_) =>
                  {Navigator.of(context).pushNamed('criar-treino/exercicios')},
            ),
            TextButton(
              child: Text('Cancelar'),
              onPressed: onCancel,
            ),
          ],
        ),
      ),
    );
  }
}
