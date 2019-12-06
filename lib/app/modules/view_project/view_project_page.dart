import 'package:flutter/material.dart';
import 'package:henriquearthur/app/modules/projects/models/project.dart';

class ViewProjectPage extends StatelessWidget {
  final Project project;

  const ViewProjectPage({Key key, this.project}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mais informações sobre o projeto ${project.title}'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(64.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                project.description,
                style: Theme.of(context).textTheme.display1,
              ),
              const SizedBox(height: 16.0),
              Text(
                project.devInfo,
                style: Theme.of(context).textTheme.display1,
              ),
              const SizedBox(height: 32.0),
              Center(child: Image.asset(project.screenshot)),
            ],
          ),
        ),
      ),
    );
  }
}
