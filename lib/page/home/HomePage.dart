import 'package:flutter/material.dart';
import 'package:layoutresponsivo2/page/home/widgets/Responsive_App_Bar.dart';

class Home_Page extends StatelessWidget {
  const Home_Page({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity,52),
        child: Responsive_App_Bar(),
      ),
    );
  }
}
