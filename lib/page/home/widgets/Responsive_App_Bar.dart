import 'package:flutter/material.dart';

class Responsive_App_Bar extends StatelessWidget {
  const Responsive_App_Bar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      elevation: 1,
      title: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: 1000,
        ),
        child: Row(
          children: <Widget>[
            Text(
              "Flutter",
              style: TextStyle(
                  fontSize: 30, color: Colors.white, fontFamily: 'Billabong',fontWeight: FontWeight.w500),
            ),

          ],
        ),
      ),
    );
  }
}
