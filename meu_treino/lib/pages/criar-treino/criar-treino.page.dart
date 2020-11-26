import 'package:flutter/material.dart';
import 'package:meu_treino/pages/criar-treino/screens/exercicios/exercicios.screen.dart';
import 'package:meu_treino/pages/criar-treino/screens/inserir-nome/inserir-nome.screen.dart';

import 'rotas.dart';

class CriarTreinoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      initialRoute: Rotas.INSERIR_NOME,
      onGenerateRoute: (RouteSettings settings) {
        WidgetBuilder builder;

        switch (settings.name) {
          case Rotas.INSERIR_NOME:
            builder = (BuildContext _) => InserirNomeScreen(
                  onCancel: () => Navigator.of(context).pop(),
                );
            break;
          case Rotas.EXERCICIOS:
            builder = (BuildContext _) => ExerciciosScreen();
            break;
          default:
            throw Exception('Rota invalida: ${settings.name}');
        }
        return MaterialPageRoute(builder: builder, settings: settings);
      },
    );
  }
}
