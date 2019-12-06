import 'package:meta/meta.dart';

class Project {
  final String title;
  final String description;
  final String devInfo;
  final String icon;
  final String screenshot;
  final String url;

  const Project(
      {@required this.title,
      this.description,
      this.devInfo,
      @required this.icon,
      this.screenshot,
      this.url});
}
