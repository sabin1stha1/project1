import 'package:flutter/material.dart';
import 'dart:async';

import '../widgets/rounded_image.dart';
import 'home.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
@override
void initState() {
  super.initState();
  Timer(Duration(seconds: 3),
          ()=>Navigator.pushReplacement(context,
          MaterialPageRoute(builder:
              (context) =>
                  MyHomePage()
          )
      )
  );
}
@override
Widget build(BuildContext context) {
  return Container(
      color: Colors.white,
      child:Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          SizedBox(width: double.infinity),
    RoundedImage(asset: 'assets/images/app_icon.png'),
    ]
  ),
  );
}
}