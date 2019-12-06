import 'package:flutter/material.dart';
import 'package:henriquearthur/app/modules/projects/components/category_list.dart';
import 'package:henriquearthur/app/modules/projects/projects_module.dart';

import 'projects_bloc.dart';

class ProjectsPage extends StatefulWidget {
  @override
  _ProjectsPageState createState() => _ProjectsPageState();
}

class _ProjectsPageState extends State<ProjectsPage> {
  ProjectsBloc bloc = ProjectsModule.to.getBloc<ProjectsBloc>();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.all(16.0),
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            CategoryList(
              title: 'Aplicativos',
              stream: bloc.appsOut,
            ),
            CategoryList(
              title: 'Sites',
              stream: bloc.websitesOut,
            ),
          ],
        ),
      ),
    );
  }
}
