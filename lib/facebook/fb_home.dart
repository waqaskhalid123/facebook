import 'package:flutter/material.dart';
import 'package:facebook/facebook/widgets/fb_post.dart';
import 'package:facebook/facebook/widgets/postbar.dart';
import 'package:facebook/facebook/widgets/menubar.dart';
import 'package:facebook/facebook/widgets/fbstroy.dart';

class FbHome extends StatefulWidget {
  const FbHome({super.key});

  @override
  State<FbHome> createState() => _FbHomeState();
}

class _FbHomeState extends State<FbHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          margin: EdgeInsets.only(top: 8),
          child: ListView(
            children: [
              PostBar(),
              Divider(
                thickness: 1,
              ),
              Menu(),
              Divider(
                thickness: 1,
              ),
              FBStory(),
              Divider(
                thickness: 1,
              ),
              FbPost()
            ],
          ),
        ));
  }
}
