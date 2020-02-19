import 'package:flutter/material.dart';
import 'package:henriquearthur/app/modules/projects/models/project.dart';
import 'package:henriquearthur/app/modules/projects/projects_bloc.dart';
import 'package:henriquearthur/app/modules/projects/projects_module.dart';
import 'package:rxdart/rxdart.dart';

import 'project_box.dart';

class CategoryList extends StatelessWidget {
  final String title;
  final Observable<List<Project>> stream;

  final ProjectsBloc bloc = ProjectsModule.to.getBloc<ProjectsBloc>();

  CategoryList({Key key, this.title, this.stream}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          title,
          style: Theme.of(context).textTheme.headline6,
        ),
        const SizedBox(height: 32.0),
        StreamBuilder(
          stream: stream,
          builder:
              (BuildContext context, AsyncSnapshot<List<Project>> snapshot) {
            if (snapshot.hasData) {
              return Center(
                child: Wrap(
                  children: <Widget>[
                    for (var project in snapshot.data)
                      ProjectBox(project: project),
                  ],
                ),
              );
            }

            return Center(
              child: CircularProgressIndicator(),
            );
          },
        ),
      ],
    );
  }
}
