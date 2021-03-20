import 'package:flutter/material.dart';
import 'package:incoherents_mvp/components/socialmedia_button.dart';
import 'package:incoherents_mvp/constants.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;

import '../sizes_helper.dart';

class Mock1Screen extends StatefulWidget {
  static const String id = '/mock1';
  @override
  _Mock1ScreenState createState() => _Mock1ScreenState();



}

class _Mock1ScreenState extends State<Mock1Screen> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: KInactiveCardColor,
      appBar: new AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: KInactiveCardColor,
        shadowColor: Colors.black,
        title: Padding(
          padding: const EdgeInsets.only(right: 200),
          child: new Text('INCOHERENTS    CLUB', style: kHeadlineFont,),
        ),
        actions: <Widget>[
          new Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SocialMediaButton(
                socialMediaImage: 'images/twitter-logo.png',
                myIconSize: 40,
                url: 'https://twitter.com/incoherentsclub'
              ),
              SocialMediaButton(
                socialMediaImage: 'images/insta-logo.png',
                myIconSize: 50,
                url: 'https://instagram.com/incoherentsclub',
              ),
              SocialMediaButton(
                socialMediaImage: 'images/discord-logo.png',
                myIconSize: 50,
                // url: 'https://instagram.com/incoherentsclub',
              ),

              SizedBox(width: 80,),
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 30,),
              Row(
                children: [
                  Container(
                    // width: MediaQuery.of(context).size.width*0.3,
                    // height: MediaQuery.of(context).size.height,
                    width: 200,
                    height: 300,
                    child: Image.asset('images/poster02.png'),
                  ),
                  Column(
                    children: [
                      Container(child: Text('Incoherent Bundle n.001', style:
                      kIncoherents20,)),
                      Container(child: Text('Edition xx of 25', style: kLabelTextStyle,)),
                      SizedBox(height: 20,),
                      Row(
                        children: [
                          SizedBox(width: 50,),
                          Container(
                            width: 200,
                            height: 300,
                            child: Image.asset('images/bd001-01.png', fit:
                            BoxFit.fill,),
                          ),
                          SizedBox(width: 10,),
                          Container(
                            // width: MediaQuery.of(context).size.width*0.1,
                            width: 200,
                            height: 300,
                            child: Image.asset('images/bd001-02.png'),
                          ),
                          SizedBox(width: 10,),
                          Container(
                            // width: MediaQuery.of(context).size.width*0.1,
                            width: 200,
                            height: 300,
                            child: Image.asset('images/bd001-03.png'),
                          ),
                          SizedBox(width: 10,),
                          Container(
                            // width: MediaQuery.of(context).size.width*0.1,
                            width: 200,
                            height: 300,
                            child: Image.asset('images/bd001-04.png'),
                          ),
                          SizedBox(width: 10,),
                          Container(
                            // width: MediaQuery.of(context).size.width*0.1,
                            width: 200,
                            height: 300,
                            child: Image.asset('images/bd001-05.png'),
                          ),
                          SizedBox(width: 10,),

                        ],
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
