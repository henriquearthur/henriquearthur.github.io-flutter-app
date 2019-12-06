import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:henriquearthur/app/modules/projects/models/project.dart';
import 'package:henriquearthur/app/modules/view_project/view_project_page.dart';

class ViewProjectModule extends ModuleWidget {
  final Project project;

  ViewProjectModule(this.project);

  @override
  List<Bloc> get blocs => [];

  @override
  List<Dependency> get dependencies => [];

  @override
  Widget get view => ViewProjectPage(project: project);

  static Inject get to => Inject<ViewProjectModule>.of();
}
