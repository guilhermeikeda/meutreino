import 'package:flutter/material.dart';

class ExerciciosScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          child: Text('Voltar'),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
    );
  }
}
