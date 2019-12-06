import 'package:henriquearthur/app/modules/contact/contact_bloc.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:henriquearthur/app/modules/contact/contact_page.dart';

class ContactModule extends ModuleWidget {
  @override
  List<Bloc> get blocs => [
        Bloc((i) => ContactBloc()),
      ];

  @override
  List<Dependency> get dependencies => [];

  @override
  Widget get view => ContactPage();

  static Inject get to => Inject<ContactModule>.of();
}
