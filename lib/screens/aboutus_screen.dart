import 'package:flutter/material.dart';
import 'package:incoherents_mvp/components/dharma_button.dart';
import 'package:incoherents_mvp/constants.dart';
import 'package:incoherents_mvp/screens/home_screen.dart';

class AboutusScreen extends StatefulWidget {
  static const String id = '/aboutus';

  @override
  _AboutusScreenState createState() => _AboutusScreenState();
}

class _AboutusScreenState extends State<AboutusScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 750,
                color: Colors.black,
                child: Center(child: Text('Not a valid page for this MVP',
                  style: TextStyle
                  (color: Colors.cyan, fontSize: 65),)),
              ),
              SizedBox(height: 20,),
              DharmaButton(titleOfButton: 'HOME',
                onPressed: (){
                  Navigator.pushReplacementNamed(context, HomeScreen.id);
                },),
            ],
          ),
        ),
      ),
    );
  }
}
