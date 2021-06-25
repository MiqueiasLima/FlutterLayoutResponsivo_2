import 'package:flutter/material.dart';
import 'package:layoutresponsivo2/page/home/widgets/Post_Widget.dart';
import 'package:layoutresponsivo2/page/home/widgets/ResponsiveAppBar.dart';
import 'package:layoutresponsivo2/page/home/widgets/Stories_List.dart';

class Home_Page extends StatelessWidget {
  const Home_Page({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 52),
        child: ResponsiveAppBar(),
      ),
      body: Align(
          alignment: Alignment.center,
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: 1000,
            ),
            child: Row(
              children: [
                Expanded(
                  child: ListView(
                      children: [
                        StoriesList(),
                        Post_Widget(),
                        Post_Widget(),
                        Post_Widget(),
                      ]
                  ),
                )
              ],
            ),
          )
      ),
    );
  }
}
