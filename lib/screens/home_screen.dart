import 'package:flutter/material.dart';
import 'package:incoherents_mvp/constants.dart';
import 'package:incoherents_mvp/screens/aboutus_screen.dart';
import 'package:incoherents_mvp/screens/drops_screen.dart';


class HomeScreen extends StatefulWidget {

  static const String id = '/';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
           Padding(
             padding: const EdgeInsets.only(top: 50),
             child: Container(
               width: MediaQuery.of(context).size.width*0.5,
               height: MediaQuery.of(context).size.height*0.5,
               decoration: BoxDecoration(
                 image: DecorationImage(
                   fit: BoxFit.fill,
                   image: NetworkImage('https://images.unsplash.com/photo-1527066236128-2ff79f7b9705?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1655&q=80')
                 )
               ),
             ),
           ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      onPressed: () {Navigator.pushReplacementNamed(context,
                          AboutusScreen.id);},
                      child: Text('EXPLORE', style: kHeadlineFont)),
                  SizedBox(width: 50,),
                  TextButton(
                    onPressed: () {Navigator.pushReplacementNamed(context,
                        DropsScreen.id);},
                      child: Text('DROPS', style: kHeadlineFont)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


//parei aqui: https://firebase.google.com/docs/flutter/setup?platform=ios
