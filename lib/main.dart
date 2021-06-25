import 'package:flutter/material.dart';
import 'package:layoutresponsivo2/page/home/HomePage.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Responsive Layout",
      builder: (context,widget) => ResponsiveWrapper.builder(
        ClampingScrollWrapper.builder(context, widget),
        defaultScale: true,
        minWidth: 450,
        defaultName: MOBILE,
        breakpoints: [
          ResponsiveBreakpoint.resize(450,name: MOBILE),
          ResponsiveBreakpoint.resize(700,name: TABLET),
          ResponsiveBreakpoint.resize(800,name: DESKTOP),
        ]
      ),
      home: Home_Page(),
    );
  }
}
