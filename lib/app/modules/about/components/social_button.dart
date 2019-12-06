import 'package:flutter/material.dart';
import 'dart:html' as html;

import 'package:henriquearthur/app/shared/components/hand_cursor.dart';

class SocialButton extends StatelessWidget {
  final Color color;
  final String title;
  final IconData icon;
  final String url;

  const SocialButton({Key key, this.color, this.title, this.icon, this.url})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HandCursor(
      child: Container(
        width: 170.0,
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
          child: FlatButton(
            padding: const EdgeInsets.all(16.0),
            color: color,
            onPressed: () => html.window.open(url, url),
            child: Row(
              children: <Widget>[
                Icon(icon),
                const SizedBox(width: 16.0),
                Text(title),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
