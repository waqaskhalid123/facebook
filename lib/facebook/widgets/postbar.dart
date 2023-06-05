import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:matcher/matcher.dart';
import 'package:facebook/facebook/whatsapp_user.dart';

class PostBar extends StatefulWidget {
  const PostBar({super.key});

  @override
  State<PostBar> createState() => _PostBarState();
}

class _PostBarState extends State<PostBar> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var h = size.height;
    var w = size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CircleAvatar(
          radius: h * 0.050,
          backgroundImage: AssetImage("images/images6.jpeg"),
        ),
        TextButton(
            onPressed: () {},
            child: Text(
              "Whats on your mind?",
              style: TextStyle(fontSize: h * 0.030, color: Colors.grey[600]),
            )),
        Container(height: 60, child: VerticalDivider()),
        Column(
          children: [
            IconButton(
                onPressed: (() {}), icon: Icon(Icons.photo_album_outlined)),
            Text("Photo")
          ],
        )
      ],
    );
  }
}
