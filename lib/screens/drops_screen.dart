import 'package:flutter/material.dart';
import 'package:incoherents_mvp/components/dharma_button.dart';
import 'package:incoherents_mvp/constants.dart';
import 'package:incoherents_mvp/screens/home_screen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:slide_countdown_clock/slide_countdown_clock.dart';
import 'package:incoherents_mvp/sizes_helper.dart';

class DropsScreen extends StatefulWidget {
  static const String id = '/drops';

  @override
  _DropsScreenState createState() => _DropsScreenState();
}

class _DropsScreenState extends State<DropsScreen> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  Duration _duration = Duration(seconds: 40);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              SizedBox(height: 80,),
          Container(
            width: displayWidth(context) * 0.99,
            child: Center(
              child: ColorizeAnimatedTextKit(
                onTap: (){},
                text: [
                  'Les Incoherents',
                  'Exhibition: 001',
                  'Bundle Edition: 001 ',
                ],
                textStyle: kIncoherents80,
                colors: [
                  Colors.deepPurple,
                  Colors.blue,
                  Colors.yellow,
                  Colors.red,
                ],
              ),
            ),
          ),
          //     Text('Incoherents Club', style: kIncoherents80,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Container(
                      width: displayWidth(context) * 0.85,
                      child: Text('Showcasing Artists ', style:
                      kIncoherents40),),
                    Container(
                      width: displayWidth(context) * 0.85,
                      child: Text('Giaccommo Sorare, Lidwine KnownOrigin, '
                          'Caroline Mintable, Joe Beeple and Mr.Robot ', style:
                      kIncoherents20green),),
                    SizedBox(height: 20,),
                    Container(
                      width: displayWidth(context) * 0.85,
                      child: Text('Bundle Curators ', style:
                      kIncoherents40),),
                    Container(
                      width: displayWidth(context) * 0.85,
                      child: Text('Sabrina Schreurs & Itsencrypted! ', style:
                      kIncoherents20green),),
                    SizedBox(height: 20,),
                    Container(
                      width: displayWidth(context) * 0.85,
                      child: Text('Edition 001 Theme ', style:
                      kIncoherents40),),
                    Container(
                      width: displayWidth(context) * 0.85,
                      child: Text('La Vache Qui Rit', style:
                      kIncoherents20green),),
                    SizedBox(height: 20,),
                    Container(
                      width: displayWidth(context) * 0.85,
                      child: Text('Min Suggested Price ', style:
                      kIncoherents40),),
                    Container(
                      width: displayWidth(context) * 0.85,
                      child: Text('0.5 ETH per Bundle ', style:
                      kIncoherents20green),),
                    SizedBox(height: 20,),
                    Container(
                      width: displayWidth(context) * 0.85,
                      child: Text('Promoted Charity ', style:
                      kIncoherents40),),
                    Container(
                      width: displayWidth(context) * 0.85,
                      child: Text('Chose Love - Help Refugees', style:
                      kIncoherents20green),),
                    SizedBox(height: 20,),
                    SlideCountdownClock(
                      duration: _duration,
                      slideDirection: SlideDirection.Down,
                      separator: ":",
                      textStyle: TextStyle(
                        fontSize: displayWidth(context) * 0.15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      onDone: () {
                        _scaffoldKey.currentState
                            .showSnackBar(SnackBar(content: Text('Edition 001 Drop '
                            'Started', style: kHeadlineFont, )));
                      },
                    ),
                  ],
                ),
              ),
              Container(
                height: 900,
                width: displayWidth(context) * 0.95,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: 200,
                          width: 200,
                          color: Colors.lightGreenAccent,
                        ),
                        Container(
                          height: 200,
                          width: 200,
                          color: Colors.pinkAccent,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          child: Text('Artpiece FYI', style: kIncoherents20,),
                        ),
                        Container(
                          child: Text('La Vache qui Rit', style: kIncoherents20,),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          child: Text('Artist 1', style: kIncoherents20green),
                        ),
                        Container(
                          child: Text('Artist 2', style: kIncoherents20green),
                        )
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: 200,
                          width: 200,
                          color: Colors.lightBlueAccent,
                        ),
                      ],
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          child: Text('Amazing Artpiece', style: kIncoherents20),
                        ),
                      ],
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          child: Text('Artist 3', style: kIncoherents20green),
                        ),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: 200,
                          width: 200,
                          color: Colors.orangeAccent,
                        ),
                        Container(
                          height: 200,
                          width: 200,
                          color: Colors.deepPurpleAccent,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          child: Text('Artpiece XYZ', style: kIncoherents20),
                        ),
                        Container(
                          child: Text('Untitled 2021', style: kIncoherents20),
                        )
                      ],
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          child: Text('Artist 4', style: kIncoherents20green),
                        ),
                        Container(
                          child: Text('Artist 5', style: kIncoherents20green),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              DharmaButton(titleOfButton: 'BUY BUNDLE',
                onPressed: (){
                  Navigator.pushReplacementNamed(context, HomeScreen.id);
                },),
              SizedBox(height: 60,),
            ],
          ),
        ),
      ),

      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 15),
            child: Container(
              width: displayWidth(context) * 0.95,
              child: Text('By buying this bundle; each artist should receive 13% '
                  'of the total revenues, each curator receives 2.5% of '
                  'the revenues, Chose Love- Help Refugees will receive '
                  '10% of the revenues as Donations and The Incoherents '
                  'Club receives 20% of the revenues.', style:
              kIncoherents10,
              textAlign: TextAlign.center,),
            ),
          ),
        ],
      ),
    );
  }
}
