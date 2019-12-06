import 'package:flutter/material.dart';
import 'package:henriquearthur/app/modules/home/home_module.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Henrique Arthur - Desenvolvedor web e mobile',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.grey,
      ),
      home: HomeModule(),
    );
  }
}
