import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:henriquearthur/app/modules/projects/projects_module.dart';
import 'package:henriquearthur/app/modules/projects/repositories/projects_repository.dart';
import 'package:rxdart/rxdart.dart';

import 'models/project.dart';

class ProjectsBloc extends BlocBase {
  ProjectsRepository repository =
      ProjectsModule.to.getDependency<ProjectsRepository>();

  BehaviorSubject<List<Project>> _apps$ = BehaviorSubject<List<Project>>();
  Sink<List<Project>> get _appsIn => _apps$.sink;
  Observable<List<Project>> get appsOut => _apps$.stream;

  BehaviorSubject<List<Project>> _websites$ = BehaviorSubject<List<Project>>();
  Sink<List<Project>> get _websitesIn => _websites$.sink;
  Observable<List<Project>> get websitesOut => _websites$.stream;

  ProjectsBloc() {
    _appsIn.add(repository.getApps());
    _websitesIn.add(repository.getWebsites());
  }

  @override
  void dispose() {
    _apps$.close();
    _websites$.close();
    super.dispose();
  }
}
