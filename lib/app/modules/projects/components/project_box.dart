import 'package:flutter/material.dart';
import 'dart:html' as html;
import 'package:henriquearthur/app/modules/projects/models/project.dart';
import 'package:henriquearthur/app/modules/view_project/view_project_module.dart';
import 'package:henriquearthur/app/shared/components/hand_cursor.dart';

class ProjectBox extends StatelessWidget {
  final Project project;

  const ProjectBox({Key key, this.project}) : super(key: key);

  void _openProject(context) {
    if (project.url != null) {
      html.window.open(project.url, project.url);
    } else {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => ViewProjectModule(project),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 32.0, bottom: 32.0),
      width: 500.0,
      child: Row(
        children: <Widget>[
          GestureDetector(
            onTap: () => _openProject(context),
            child: HandCursor(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.contain,
                    image: AssetImage(project.icon),
                  ),
                ),
                width: 128.0,
                height: 128.0,
              ),
            ),
          ),
          const SizedBox(width: 16.0),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Text(
                  project.title,
                  style: Theme.of(context).textTheme.title,
                ),
                if (project.description != null)
                  Text(
                    project.description,
                    style: Theme.of(context).textTheme.subtitle,
                  ),
                const SizedBox(height: 16.0),
                HandCursor(
                  child: RaisedButton(
                    onPressed: () => _openProject(context),
                    color: Colors.black,
                    child: Row(
                      children: <Widget>[
                        Text(project.url != null
                            ? 'Acessar'
                            : 'Mais informações'),
                        const SizedBox(width: 8.0),
                        Icon(Icons.call_made),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
