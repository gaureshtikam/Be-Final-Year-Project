import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/WeightLossPage/components/weightloss_screen.dart';
import 'package:flutter_auth/Screens/WeightLossPage/components/weightloss_screen.dart';

class Splash1 extends StatefulWidget {
  const Splash1({
    Key key,
  }) : super(key: key);

  @override
  State<Splash1> createState() => _Splash1State();
}

class _Splash1State extends State<Splash1> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(Duration(milliseconds: 2000), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => WeightLossScreen()));
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: 100,
                color: Colors.blue,
              ),
              Container(
                child: Text('Loading...',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    )),
              ),
            ],
          ),
        ));
  }
}
