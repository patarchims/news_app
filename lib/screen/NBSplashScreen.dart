import 'dart:async';
import 'package:flutter/material.dart';
import 'package:news_blog/screen/NBWalkThroughScreen.dart';
import 'package:news_blog/utils/NBImages.dart';
import 'package:nb_utils/nb_utils.dart';

class NBSplashScreen extends StatefulWidget {
  static String tag = '/NBSplashScreen';

  @override
  NBSplashScreenState createState() => NBSplashScreenState();
}

class NBSplashScreenState extends State<NBSplashScreen> {
  @override
  void initState() {
    super.initState();
    init();
  }

  Future<void> init() async {
    setStatusBarColor(white, statusBarIconBrightness: Brightness.dark);
    Timer(Duration(seconds: 3), () {
      finish(context);
      NBWalkThroughScreen().launch(context);
    });
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(NBLogo,width: 500,height: 500),
      ),
    );
  }
}
