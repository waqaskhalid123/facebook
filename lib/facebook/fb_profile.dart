import 'package:flutter/material.dart';
import 'package:facebook/facebook/widgets/fb_post.dart';
import 'package:facebook/facebook/widgets/postbar.dart';
import 'package:facebook/facebook/widgets/menubar.dart';

class FB_Profile extends StatelessWidget {
  const FB_Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        title: Text("Waqas Hashmi"),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                Stack(clipBehavior: Clip.antiAlias, children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.52,
                    width: double.infinity,
                    //color: Colors.red,
                  ),
                  Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.40,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30)),
                      child: Image.network(
                          fit: BoxFit.fill,
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQGppH8k9kZX3fadW58kz6JzrfjZibB68W5g&usqp=CAU"),
                    ),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.33,
                    child: CircleAvatar(
                      backgroundImage: AssetImage("images/images4.jpeg"),
                      radius: MediaQuery.of(context).size.height * 0.060,
                      //radius: 50
                    ),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.47,
                    child: Text("Waqas Hashmi",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                  )
                ]),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueAccent),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.add_rounded, color: Colors.white),
                              Text(
                                "Add to story",
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.grey),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.edit, color: Colors.white),
                                Text(
                                  "Edit Profile",
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                          ],
                        )),
                    Icon(Icons.more_horiz)
                  ],
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.school),
                        SizedBox(width: 5),
                        Text("Quaid i azam University")
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.handshake),
                        SizedBox(width: 5),
                        Text("Single")
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.info_outline_rounded),
                        SizedBox(width: 5),
                        Text("About")
                      ],
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "Friends",
                          style: TextStyle(color: Colors.grey),
                        )),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "find Friends",
                          style: TextStyle(color: Colors.blueAccent),
                        ))
                  ],
                ),
              ],
            ),
          ),
          Divider(
            thickness: 1,
          ),
          PostBar(),
          Divider(
            thickness: 1,
          ),
          Menu(),
          Divider(
            thickness: 1,
          ),
          FbPost()
        ],
      ),
    );
  }
}
