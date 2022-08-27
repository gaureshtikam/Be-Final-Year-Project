import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth/ui/pages/profile_screen3.dart';
import 'package:flutter_auth/ui/pages/profile_screen4.dart';
import 'package:flutter_auth/ui/pages/profile_screen5.dart';
import 'package:flutter_auth/ui/pages/profile_screen6.dart';
import 'package:flutter_auth/ui/pages/profile_screen7.dart';

import '../../../constants.dart';
import '../../../ui/pages/profile_screen.dart';
import '../../../ui/pages/profile_screen2.dart';

class FormScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FormScreenState();
  }
}

class FormScreenState extends State<FormScreen> {
  String _calories;
  String _calories2;
  String _calories3;
  String _WeightDifference;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildCalories() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Current Weight (in kgs)'),
      keyboardType: TextInputType.number,
      validator: (String value) {
        int calories = int.tryParse(value);

        if (calories == null || calories <= 0) {
          return 'Current Weight must be greater than 0';
        }
        if (calories <= 30) {
          return 'Current Weight must be greater than 30kgs';
        }

        if (calories >= 130) {
          return 'Current Weight must be less than 130kgs';
        }

        return null;
      },
      onSaved: (String value) {
        _calories = value;
      },
    );
  }

  Widget _buildCalories2() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Target Weight (in kgs)'),
      keyboardType: TextInputType.number,
      validator: (String value) {
        int calories2 = int.tryParse(value);

        if (calories2 == null || calories2 <= 0) {
          return 'Target Weight must be greater than 0';
        }
        if (calories2 <= 30) {
          return 'Target Weight must be greater than 30kgs';
        }

        if (calories2 >= 130) {
          return 'Target Weight must be less than 130kgs';
        }
        return null;
      },
      onSaved: (String value) {
        _calories2 = value;
      },
    );
  }

  Widget _buildCalories3() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Your Height (in cms)'),
      keyboardType: TextInputType.number,
      validator: (String value) {
        int calories3 = int.tryParse(value);

        if (calories3 == null || calories3 <= 0) {
          return 'Your height must be greater than 0cms';
        }

        if (calories3 <= 54) {
          return 'Your height must be greater than 54cms';
        }
        if (calories3 >= 251) {
          return 'Your height must be less than 251cms';
        }
        return null;
      },
      onSaved: (String value) {
        _calories3 = value;
      },
    );
  }

  TextEditingController _currentWeightTEC = TextEditingController();
  TextEditingController _targetWeightTEC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fitness Application"),
        backgroundColor: kPrimaryColor,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(24),
          child: Form(
            key: _formKey,
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
                _buildCalories(),
                _buildCalories2(),
                _buildCalories3(),
                SizedBox(height: 100),
                RaisedButton(
                  child: Text(
                    'Submit',
                    style: TextStyle(color: Colors.blue, fontSize: 16),
                  ),
                  onPressed: () {
                    if (!_formKey.currentState.validate()) {
                      return;
                    }

                    _formKey.currentState.save();

                    print(_calories);
                    print(_calories2);
                    print(_calories3);
                    var _CurrentWeightINT = int.parse(_calories);
                    var _TargetWeightINT = int.parse(_calories2);
                    var _YourHeightINT = int.parse(_calories3);
                    int _WeightDifference =
                        _CurrentWeightINT - _TargetWeightINT;

                    if (_CurrentWeightINT < _TargetWeightINT &&
                        (_WeightDifference >= -10 &&
                            _WeightDifference < 0)) //weight gain
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
                                backgroundColor:
                                    Color.fromARGB(255, 255, 255, 255),
                                nextScreen: ProfileScreen3());
                          },
                        ),
                      );

                    if (_TargetWeightINT < _CurrentWeightINT &&
                        (_WeightDifference <= 10 &&
                            _WeightDifference > 0)) //weightloss
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
                                backgroundColor:
                                    Color.fromARGB(255, 255, 255, 255),
                                nextScreen: ProfileScreen2());
                          },
                        ),
                      );

                    if (_TargetWeightINT < _CurrentWeightINT &&
                        (_WeightDifference > 10 &&
                            _WeightDifference < 20)) //weightloss more than 10
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
                                backgroundColor:
                                    Color.fromARGB(255, 255, 255, 255),
                                nextScreen: ProfileScreen5());
                            //higher than 10 weight loss
                          },
                        ),
                      );

                    if (_TargetWeightINT > _CurrentWeightINT &&
                        (_WeightDifference < -10) &&
                        _WeightDifference > -20) //weightgain more than 10
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
                                backgroundColor:
                                    Color.fromARGB(255, 255, 255, 255),
                                nextScreen: ProfileScreen4());
                          },
                        ),
                      );
                    //higher than 10 weight gain

                    if (_TargetWeightINT > _CurrentWeightINT &&
                        (_WeightDifference < -10 &&
                            _WeightDifference < -20)) //weightgain more than 20
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
                                backgroundColor:
                                    Color.fromARGB(255, 255, 255, 255),
                                nextScreen: ProfileScreen6());
                          },
                        ),
                      );
                    //higher than 20 weight gain
                    if (_TargetWeightINT < _CurrentWeightINT &&
                        (_WeightDifference > 10 &&
                            _WeightDifference > 20)) //weightloss more than 20
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
                                backgroundColor:
                                    Color.fromARGB(255, 255, 255, 255),
                                nextScreen: ProfileScreen7());
                            //higher than 10 weight loss
                          },
                        ),
                      );

                    if (_WeightDifference == 0)
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
                                backgroundColor:
                                    Color.fromARGB(255, 255, 255, 255),
                                nextScreen: ProfileScreen());
                          },
                        ),
                      );

                    //Send to API
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
