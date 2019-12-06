import 'package:henriquearthur/app/modules/about/about_bloc.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:henriquearthur/app/modules/about/about_page.dart';

class AboutModule extends ModuleWidget {
  @override
  List<Bloc> get blocs => [
        Bloc((i) => AboutBloc()),
      ];

  @override
  List<Dependency> get dependencies => [];

  @override
  Widget get view => AboutPage();

  static Inject get to => Inject<AboutModule>.of();
}
