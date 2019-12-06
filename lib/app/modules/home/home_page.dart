import 'package:flutter/material.dart';
import 'package:henriquearthur/app/modules/about/about_module.dart';
import 'package:henriquearthur/app/modules/contact/contact_module.dart';
import 'package:henriquearthur/app/modules/projects/projects_module.dart';
import 'package:henriquearthur/app/shared/components/hand_cursor.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  List _tabs = [
    AboutModule(),
    ProjectsModule(),
    ContactModule(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _tabs.elementAt(_currentIndex),
      bottomNavigationBar: HandCursor(
        child: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (int index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text("Sobre"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.dashboard),
              title: Text("Projetos"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.mail_outline),
              title: Text("Contato"),
            ),
          ],
        ),
      ),
    );
  }
}
