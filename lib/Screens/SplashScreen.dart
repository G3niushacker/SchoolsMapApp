import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:schoolsmapapp/Screens/ProvinceScreen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      backgroundColor: Colors.lightBlueAccent,
      splash: Column(
        children: <Widget>[
          Image.asset("Assets/school.png",height: 40,width: 40,),
          // SizedBox(height: 10,),
          Text("Schools Map",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),
          SizedBox(height: 10,)
        ],
      ),
      splashTransition: SplashTransition.decoratedBoxTransition,
      nextScreen: ProvinceScreen(),
    );
  }
}
