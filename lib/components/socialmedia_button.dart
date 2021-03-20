import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class SocialMediaButton extends StatelessWidget {
  SocialMediaButton({this.url, this.socialMediaImage, this.myIconSize});

  final String url;
  final String socialMediaImage;
  final double myIconSize;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: EdgeInsets.all(10),
      // icon: Image.asset(socialMediaImage),
      onPressed: _launchURL,
      // icon: Image.network(socialMediaImage),
      icon: Image.asset(socialMediaImage),
      iconSize: myIconSize,
    );
  }

  _launchURL() async {
//    const url = 'https://flutter.dev';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

}


class EmailButton extends StatelessWidget {
  EmailButton({this.subject, this.body});
  final String subject;
  final String body;


  @override
  Widget build(BuildContext context) {

    return IconButton(
      icon:
      // Image(image: FirebaseImage('gs://landingpage-920f7.appspot'
      //     '.com/images_socialmedia_logos/gmail-logo.png'),),
      Image.network('https://firebasestorage.googleapis.com/v0/b/landingpage-920f7.appspot.com/o/images_socialmedia_logos%2Fgmail-logo.png?alt=media&token=2b5bd3f9-e3bf-4cf9-a0f8-00953139df5c'),
      iconSize: 45,
      onPressed: () => _launchEMAIL(subject, body),
    );
  }

  _launchEMAIL(String subject, String body) async {
    var emailurl = 'mailto:juliana@itsencrypted'
        '.com?subject=$subject&body=$body';
    if (await canLaunch(emailurl)) {
      await launch(emailurl);
    } else {
      throw 'Could not launch $emailurl';
    }

  }
}
