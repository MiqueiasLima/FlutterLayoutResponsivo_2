import 'package:flutter/material.dart';
import 'package:layoutresponsivo2/page/home/widgets/ResponsiveAppBar.dart';

class Home_Page extends StatelessWidget {
  const Home_Page({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity,52),
        child: ResponsiveAppBar(),
      ),
      body: Align(
        alignment: Alignment.center,
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: 1000,
          ),
          child: Container(
            width: 2000,
            height: 2000,
            color: Colors.deepOrange,
          ),
        ),
      ),
    );
  }
}
