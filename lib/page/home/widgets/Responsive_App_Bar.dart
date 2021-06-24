import 'package:flutter/gestures.dart';
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
            MouseRegion(
              cursor: SystemMouseCursors.click,
              child: Text(
                "Flutter",
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontFamily: 'Billabong',
                    fontWeight: FontWeight.w500),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 4),
              width: 200,
              height: 30,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
              ),
              child: Row(children: <Widget>[
                Icon(Icons.search,size: 15,),
                const SizedBox(width: 4,),
                Expanded(
                    child: TextField(
                  style: TextStyle(color: Colors.white, fontSize: 15),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    isCollapsed: true,
                  ),
                )
                ),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
