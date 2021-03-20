import 'package:flutter/material.dart';
import 'package:incoherents_mvp/screens/mock1_screen.dart';
import 'screens/drops_screen.dart';
import 'screens/home_screen.dart';
import 'screens/aboutus_screen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(IncoherentsMVP());
}

class IncoherentsMVP extends StatefulWidget {

  @override
  _IncoherentsMVPState createState() => _IncoherentsMVPState();
}

class _IncoherentsMVPState extends State<IncoherentsMVP> {

  // final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/mock1',
      routes: {
        '/': (context) => HomeScreen(),
        '/aboutus': (context) => AboutusScreen(),
        '/drops': (context) => DropsScreen(),
        '/mock1': (context) => Mock1Screen()
      },
      // home: Scaffold(
      //   appBar: AppBar(
      //     title: const Text('Firebase Core example app'),
      //   ),
      //
      // )
    );
  }
}
