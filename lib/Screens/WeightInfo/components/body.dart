import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_auth/Screens/Login/login_screen.dart';
import 'package:flutter_auth/Screens/WeightInfo/components/weightinfo_screen.dart';
import 'package:flutter_auth/Screens/WeightLossPage/components/weightloss_screen.dart';
import 'package:flutter_auth/components/rounded_form_input_field.dart';
import 'package:flutter_auth/components/text_field_container.dart';
import 'package:flutter_auth/splash1.dart';
import 'package:flutter_auth/ui/pages/profile_screen.dart';
import 'package:flutter_auth/ui/pages/profile_screen2.dart';
import 'package:flutter_auth/widgets/drawer.dart';
import 'package:flutter_auth/Screens/HomePage/components/home_screen.dart';
import 'package:flutter_auth/Screens/Login/components/background.dart';
import 'package:flutter_auth/Screens/Signup/signup_screen.dart';
import 'package:flutter_auth/components/rounded_button.dart';
import 'package:flutter_auth/components/rounded_input_field.dart';
import 'package:flutter_auth/components/rounded_password_field.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';
import '../../WeightGainScreen/components/weightgain_screen.dart';

TextEditingController _section_id = new TextEditingController();

class Body extends StatefulWidget {
  final _form = GlobalKey<FormState>();

  Body({
    Key key,
  }) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  TextEditingController _currentWeightTEC = TextEditingController();
  TextEditingController _targetWeightTEC = TextEditingController();
  bool currentWeightValidate = false;

  bool validateTextField(String userInput) {
    if (userInput.isEmpty) {
      setState(() {
        currentWeightValidate = true;
      });
      return false;
    }
    setState(() {
      currentWeightValidate = false;
    });
    return true;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
                child: Image.asset(
                  "assets/images/formIcon.jpeg",
                  height: 90,
                )),
            Padding(
              padding: const EdgeInsets.all(9.0),
              child: Text(
                "Your Information",
                style: TextStyle(fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: size.height * 0.01),
            TextFieldContainer(
              child: TextField(
                controller: _currentWeightTEC,
                textAlign: TextAlign.center,
                cursorColor: kPrimaryColor,
                decoration: InputDecoration(
                    labelText: "Current Weight",
                    hintText: "Your Current Weight",
                    border: InputBorder.none),
              ),

            ),
            TextFieldContainer(
              child: TextFormField(
                controller: _targetWeightTEC,
                textAlign: TextAlign.center,
                cursorColor: kPrimaryColor,
                decoration: InputDecoration(
                    labelText: "Target Weight",
                    hintText: "Your Target Weight",
                    border: InputBorder.none),
                validator: (text) {
                  if (text == null || text.isEmpty) {
                    return 'Text is empty';
                  }
                  return null;
                },
              ),
            ),
            TextFieldContainer(
              child: TextFormField(
                textAlign: TextAlign.center,
                cursorColor: kPrimaryColor,
                decoration: InputDecoration(
                    labelText: "Current Height",
                    hintText: "Your Current Height",
                    border: InputBorder.none),
                validator: (text) {
                  if (text == null || text.isEmpty) {
                    return 'Text is empty';
                  }
                  return null;
                },
              ),
            ),
            RoundedButton(
              text: "Submit",
              press: () {
                var _CurrentWeight = _currentWeightTEC.text;
                var _CurrentWeightINT = int.parse(_CurrentWeight);
                var _TargetWeight = _targetWeightTEC.text;
                var _TargetWeightINT = int.parse(_TargetWeight);

                if (_CurrentWeightINT < _TargetWeightINT)
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return AnimatedSplashScreen(
                            splash: Image.asset(
                                'assets/images/GreenLoadingIcon.png'),
                            duration: 1500,
                            splashTransition:
                            SplashTransition.rotationTransition,
                            backgroundColor: Color.fromARGB(255, 255, 255, 255),
                            nextScreen: ProfileScreen2());
                      },
                    ),
                  );
                // if (_TargetWeightINT < _CurrentWeightINT)
                //   Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //       builder: (context) {
                //         return ProfileScreen2();
                //       },
                //     ),
                //   );

                if (_CurrentWeightINT > _TargetWeightINT)
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return AnimatedSplashScreen(
                            splash: Image.asset(
                                'assets/images/GreenLoadingIcon.png'),
                            duration: 1500,
                            splashTransition:
                            SplashTransition.rotationTransition,
                            backgroundColor: Color.fromARGB(255, 255, 255, 255),
                            nextScreen: ProfileScreen2());

                        // splash: Center(
                        //   child: Column(
                        //     mainAxisAlignment: MainAxisAlignment.center,
                        //     children: [
                        //       Container(
                        //         height: 100,
                        //         width: 100,
                        //         color: Colors.blue,
                        //       ),
                        //       Container(
                        //         child: Text('Loading...',
                        //             style: TextStyle(
                        //               fontSize: 24,
                        //               fontWeight: FontWeight.bold,
                        //             )),
                        //       ),
                        //     ],
                        //   ),
                        // ),
                      },
                    ),
                  );
                // if (_CurrentWeightINT > _TargetWeightINT)
                //   Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //       builder: (context) {
                //         return SplashScreen(
                //           seconds: 10,
                //           navigateAfterSeconds: ProfileScreen2(),
                //           title: Text('Splash'),
                //           style: TextStyle(
                //               fontWeight: FontWeight.bold,
                //               fontSize: 20.0,
                //               color: Colors.blueGrey),
                //         );
                //       },
                //     ),
                //   );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget SplashScreen(
      {int seconds, navigateAfterSeconds, Text title, TextStyle style}) {}
}








/*import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_auth/Screens/Login/login_screen.dart';
import 'package:flutter_auth/Screens/WeightInfo/components/weightinfo_screen.dart';
import 'package:flutter_auth/components/rounded_form_input_field.dart';
import 'package:flutter_auth/components/text_field_container.dart';
import 'package:flutter_auth/widgets/drawer.dart';
import 'package:flutter_auth/Screens/HomePage/components/home_screen.dart';
import 'package:flutter_auth/Screens/Login/components/background.dart';
import 'package:flutter_auth/Screens/Signup/signup_screen.dart';
import 'package:flutter_auth/components/rounded_button.dart';
import 'package:flutter_auth/components/rounded_input_field.dart';
import 'package:flutter_auth/components/rounded_password_field.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';
import '../../WeightGainScreen/components/weightgain_screen.dart';

TextEditingController _section_id = new TextEditingController();

class Body extends StatefulWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  TextEditingController _currentWeightTEC = TextEditingController();
  TextEditingController _targetWeightTEC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Home Page",
              style: TextStyle(fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: size.height * 0.03),
            TextFieldContainer(
              child: TextField(
                controller: _currentWeightTEC,
                textAlign: TextAlign.center,
                cursorColor: kPrimaryColor,
                decoration: InputDecoration(
                    labelText: "Current Weight",
                    hintText: "Your Current Weight",
                    border: InputBorder.none),
              ),
            ),
            TextFieldContainer(
              child: TextField(
                controller: _targetWeightTEC,
                textAlign: TextAlign.center,
                cursorColor: kPrimaryColor,
                decoration: InputDecoration(
                    labelText: "Target Weight",
                    hintText: "Your Target Weight",
                    border: InputBorder.none),
              ),
            ),
            TextFieldContainer(
              child: TextField(
                textAlign: TextAlign.center,
                cursorColor: kPrimaryColor,
                decoration: InputDecoration(
                    labelText: "Current Height",
                    hintText: "Your Current Height",
                    border: InputBorder.none),
              ),
            ),
            RoundedButton(
              text: "Submit",
              press: () {
                var _CurrentWeight = _currentWeightTEC.text;
                var _CurrentWeightINT = int.parse(_CurrentWeight);
                var _TargetWeight = _targetWeightTEC.text;
                var _TargetWeightINT = int.parse(_TargetWeight);
                if (_CurrentWeightINT < _TargetWeightINT)
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return WeightGainScreen();
                      },
                    ),
                  );
              },
            ),
          ],
        ),
      ),
    );
  }
}
*/