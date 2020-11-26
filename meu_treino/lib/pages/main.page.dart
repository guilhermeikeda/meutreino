import 'package:flutter/material.dart';

import 'selecionar-treino/selecionar-treino.page.dart';
import 'historico-treino/historico-treino.page.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>
    with TickerProviderStateMixin<MainPage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: false,
        child: IndexedStack(
          index: _currentIndex,
          children: _meuTreinoScreens.map((e) => e.destino).toList(),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) => setState(() => _currentIndex = index),
        items: _meuTreinoScreens
            .map(
              (destination) => BottomNavigationBarItem(
                label: destination.title,
                icon: Icon(destination.icon),
                backgroundColor: Colors.white70,
              ),
            )
            .toList(),
      ),
    );
  }
}

class Destination {
  Destination(this.destino, this.icon, this.title);
  Widget destino;
  IconData icon;
  String title;
}

List<Destination> _meuTreinoScreens = List.of([
  Destination(SelecionarTreinoPage(), Icons.fitness_center, 'Treinar'),
  Destination(HistoricoTreinoPage(), Icons.history, 'Histórico'),
]);
