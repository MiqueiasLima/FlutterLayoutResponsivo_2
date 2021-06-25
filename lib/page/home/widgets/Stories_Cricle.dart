import 'package:flutter/material.dart';

class Stories_Circle extends StatelessWidget {
  const Stories_Circle({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          width: 66,
          height: 66,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              colors: [
                Colors.blue,
                Colors.green,
              ],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
            )
          ),
          alignment: Alignment.center,
          child: Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white
            ),
            child: CircleAvatar(
              radius: 29,
              backgroundImage: NetworkImage('https://cdn.pixabay.com/photo/2021/06/21/11/30/grass-6353411_960_720.jpg'),
            ),
          ),
        ),
        Text("Pastos Verdes", style: TextStyle(
          fontSize: 12,
          color: Colors.white
        ),)
      ],
    );
  }
}
