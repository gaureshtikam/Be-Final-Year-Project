import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Welcome/welcome_screen.dart';
//import 'package:flutter_auth/constants.dart';
import 'package:firebase_core/firebase_core.dart';
//import 'package:flutter_auth/Screens/Welcome/welcome_screen.dart';
//import 'package:flutter_auth/Screens/Welcome/components/body.dart';
import 'package:flutter_auth/habitTracker/helpers/task_db.dart';
//import 'package:flutter_personal_tracker/helpers/task_db.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await initTaskBox();
  await Firebase.initializeApp(
      options: FirebaseOptions(
        apiKey: "AIzaSyBh70UnGSMuwtHROIhtw-J3RQTKbBY3FhM", // Your apiKey
        appId: "1:1029342360924:android:e188a2686a955ecc133d99", // Your appId
        messagingSenderId: "1029342360924", // Your messagingSenderId
        projectId: "fitverse-54224", // Your projectId
      ),
  );
  runApp(MyApp());
  //runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _initialization,
        builder: (context, snapshot) {
          // Check for Errors
/*          if (snapshot.hasError) {
            print("Something Went Wrong");
          }*/
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          return MaterialApp(
            title: 'Flutter Auth',
            theme: ThemeData(
              primarySwatch: Colors.deepPurple,
            ),
            debugShowCheckedModeBanner: false,
            home: WelcomeScreen(),
          );
        });
  }
}


/*
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Auth',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: WelcomeScreen(),
    );
  }
}
*/
