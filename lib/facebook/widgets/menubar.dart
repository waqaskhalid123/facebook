import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var h = size.height;
    var w = size.width;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Expanded(
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                onTap: (() {
                  print("helo");
                }),
                child: Row(
                  children: [
                    Icon(
                      Icons.post_add_outlined,
                      color: Colors.blue[700],
                    ),
                    Text("Text",
                        style: TextStyle(fontSize: 18, color: Colors.grey[600]))
                  ],
                ),
              ),
              Container(
                  height: 40,
                  child: VerticalDivider(
                    color: Colors.black26,
                  )),
              InkWell(
                onTap: (() {
                  print("helo");
                }),
                child: Row(
                  children: [
                    Icon(
                      Icons.video_call,
                      color: Colors.redAccent,
                    ),
                    Text("Live Video",
                        style: TextStyle(fontSize: 18, color: Colors.grey[600]))
                  ],
                ),
              ),
              Container(
                  height: 40,
                  child: VerticalDivider(
                    color: Colors.black26,
                  )),
              InkWell(
                onTap: (() {
                  print("helo");
                }),
                child: Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      color: Colors.redAccent,
                    ),
                    Text("Location",
                        style: TextStyle(fontSize: 18, color: Colors.grey[600]))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
