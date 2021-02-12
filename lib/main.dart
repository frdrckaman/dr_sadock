import 'package:email_launcher/email_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'nm_box.dart';
import 'dart:io';
import 'package:url_launcher/url_launcher.dart';
import 'splash_screen.dart';
import 'package:responsive_framework/responsive_framework.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIOverlays([]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      // builder: (context, widget) => ResponsiveWrapper.builder(
      // BouncingScrollWrapper.builder(context, widget),
      // maxWidth: 1200,
      // minWidth: 450,
      // defaultScale: true,
      // breakpoints: [
      //   ResponsiveBreakpoint.resize(450, name: MOBILE),
      //   ResponsiveBreakpoint.autoScale(800, name: TABLET),
      //   ResponsiveBreakpoint.autoScale(1000, name: TABLET),
      //   ResponsiveBreakpoint.resize(1200, name: DESKTOP),
      //   ResponsiveBreakpoint.autoScale(2460, name: "4K"),
      // ],),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(textTheme: TextTheme(body1: TextStyle(color: fCL))),
      home: Splash(),
    );
  }

}



