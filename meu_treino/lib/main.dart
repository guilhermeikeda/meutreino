import 'package:flutter/material.dart';

import 'pages/main.page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meu Treino',
      home: MainPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
