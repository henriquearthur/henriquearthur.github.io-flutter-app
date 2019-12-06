import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'components/social_button.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(32.0),
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          CircleAvatar(
            radius: 100,
            backgroundImage: Image.asset('assets/images/avatar.png').image,
          ),
          const SizedBox(height: 10.0),
          AutoSizeText(
            "Henrique Arthur",
            style: TextStyle(
              color: Colors.white,
              fontSize: 48,
              fontWeight: FontWeight.w300,
              letterSpacing: -1.0,
            ),
          ),
          const SizedBox(height: 5.0),
          AutoSizeText(
            "Desenvolvedor web e mobile.\nFlutter. Laravel. Bootstrap.",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.w300,
            ),
          ),
          const SizedBox(height: 32.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SocialButton(
                title: "GitHub",
                icon: FontAwesomeIcons.github,
                color: Colors.black54,
                url: "https://github.com/henriquearthur",
              ),
              const SizedBox(width: 16.0),
              SocialButton(
                title: "StackOverflow",
                icon: FontAwesomeIcons.stackOverflow,
                color: Color(0xfff48024),
                url: "https://stackoverflow.com/users/2457045/henrique-arthur",
              ),
              const SizedBox(width: 16.0),
              SocialButton(
                title: "LinkedIn",
                icon: FontAwesomeIcons.linkedin,
                color: Color(0xff0077b5),
                url: "https://www.linkedin.com/in/henrique-arthur-a09155119/",
              ),
            ],
          )
        ],
      ),
    );
  }
}
