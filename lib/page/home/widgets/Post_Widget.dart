import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

class Post_Widget extends StatelessWidget {
  const Post_Widget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final desktop = ResponsiveWrapper.of(context).isDesktop;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 14, 14, 14),
          child: Row(
            children: [
              CircleAvatar(
                radius: 18,
                backgroundImage: NetworkImage(
                  'https://cdn.pixabay.com/photo/2021/06/21/11/30/grass-6353411_960_720.jpg',
                ),
                backgroundColor: Colors.transparent,
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Text(
                  'Pastos Verdes',
                  style: TextStyle(
                      fontWeight: FontWeight.w500, color: Colors.white),
                ),
              ),
              GestureDetector(
                child: Icon(
                  Icons.more_horiz_sharp,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
        Image.network(
          'https://cdn.pixabay.com/photo/2021/06/21/11/30/grass-6353411_960_720.jpg',
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(4, 4, 4, 4),
          child: Row(
            children: [
              IconButton(
                icon: Icon(Icons.favorite_border),
                color: Colors.white,
                onPressed: () {},
              ),
              const SizedBox(width: 4),
              IconButton(
                icon: Icon(Icons.messenger_outline),
                color: Colors.white,
                onPressed: () {},
              ),
              const SizedBox(width: 4),
              IconButton(
                icon: Icon(Icons.send),
                color: Colors.white,
                onPressed: () {},
              ),
              Expanded(child: Container()),
              IconButton(
                icon: Icon(Icons.bookmark_border),
                color: Colors.white,
                onPressed: () {},
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16, bottom: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Curtido por você e outras 300 pessoas',
                style: TextStyle(color: Colors.white),
              ),
              const SizedBox(height: 8),
              Text(
                'HÁ 1 HORA',
                style: TextStyle(fontSize: 10, color: Colors.white),
              )
            ],
          ),
        ),
        if (desktop) ...[
          Divider(
            color: Colors.white,
            height: 0.1,
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(16, 20, 0, 24),
                  child: TextFormField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      isCollapsed: true,
                      hintText: 'Adicione um comentário...',
                      hintStyle: TextStyle(fontSize: 13, color: Colors.white),
                    ),
                  ),
                ),
              ),
              ElevatedButton(onPressed: (){}, child: Text("Publicar"),style: ElevatedButton.styleFrom(primary: Colors.blue),),
            ],
          ),
        ]
      ],
    );
  }
}
