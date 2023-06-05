import 'package:flutter/material.dart';
import 'package:facebook/facebook/whatsapp_user.dart';

class FbPost extends StatelessWidget {
  const FbPost({super.key});

  @override
  Widget build(BuildContext context) {
    List<PostModel> postList = [
      PostModel(
          avatarOnOressed: () {
            print("avatar");
          },
          moreOnPressed: () {
            print("more");
          },
          likedOnPressed: () {
            print("Liked");
          },
          shareOnPressed: () {
            print("Share");
          },
          commentOnPressed: () {
            print("comment");
          },
          imageAvatar: "images/images1.jpeg",
          name: "Waqas",
          time: "23:10",
          postImage: "images/images1.jpeg",
          postTitle: "this is waqas post"),
      PostModel(
          avatarOnOressed: () {
            print("avatar");
          },
          moreOnPressed: () {
            print("more");
          },
          likedOnPressed: () {
            print("Liked");
          },
          shareOnPressed: () {
            print("Share");
          },
          commentOnPressed: () {
            print("comment");
          },
          imageAvatar: "images/images2.jpeg",
          name: "Saad",
          time: "11:10",
          postImage: "images/images2.jpeg",
          postTitle: "this is saad post"),
      PostModel(
          avatarOnOressed: () {
            print("avatar");
          },
          moreOnPressed: () {
            print("more");
          },
          likedOnPressed: () {
            print("Liked");
          },
          shareOnPressed: () {
            print("Share");
          },
          commentOnPressed: () {
            print("comment");
          },
          imageAvatar: "images/images3.jpeg",
          name: "Irtaza",
          time: "12:10",
          postImage: "images/images3.jpeg",
          postTitle: "this is irtaza post"),
    ];

    return Expanded(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: ListView.separated(
            shrinkWrap: true,
            itemBuilder: ((context, index) {
              return post(
                  postList[index].postImage,
                  postList[index].postTitle,
                  postList[index].name,
                  postList[index].time,
                  postList[index].imageAvatar);
            }),
            separatorBuilder: ((context, index) {
              return Divider(
                thickness: 1,
              );
            }),
            itemCount: postList.length),
      ),
    );
  }

  post(var postImage, var postTitle, var name, var time, var avatar) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Expanded(
        child: ListView(
          shrinkWrap: true,
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 8),
                  child: CircleAvatar(
                    backgroundImage: AssetImage(avatar),
                    radius: 25,
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                      Wrap(
                        spacing: 5,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Text(time),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Icon(Icons.public),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Icon(Icons.more_horiz_outlined)
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 3),
                    child: Text(postTitle),
                  ),
                  Container(
                    height: 300,
                    width: double.infinity,
                    child: Image.asset(
                      postImage,
                      fit: BoxFit.contain,
                    ),
                  ),
                  Divider(thickness: 1),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Wrap(
                          children: [
                            Icon(Icons.thumb_up_outlined),
                            Text(
                              "12",
                              style: TextStyle(fontSize: 18),
                            )
                          ],
                        ),
                        Wrap(
                          children: [
                            Icon(Icons.message_outlined),
                            Text(
                              "12",
                              style: TextStyle(fontSize: 18),
                            )
                          ],
                        ),
                        Wrap(
                          children: [
                            Icon(Icons.share_outlined),
                            Text(
                              "12",
                              style: TextStyle(fontSize: 18),
                            )
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
