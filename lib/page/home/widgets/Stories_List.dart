import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:layoutresponsivo2/page/home/widgets/Stories_Cricle.dart';
import 'package:responsive_framework/responsive_framework.dart';

class StoriesList extends StatelessWidget {
  const StoriesList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final mobile = ResponsiveWrapper.of(context).isMobile;


    return Container(
      margin: EdgeInsets.symmetric(vertical: mobile ? 15 : 35),
      height: 110,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: 16),
        separatorBuilder: (_,__)=> const SizedBox(width: 16,),
        itemCount: 16,
        itemBuilder: (_,i) => Stories_Circle()
      ),
    );
  }
}
