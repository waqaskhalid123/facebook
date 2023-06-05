import 'package:flutter/material.dart';
import 'whatsapp_user.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class FBVideo extends StatefulWidget {
  const FBVideo({Key? key}) : super(key: key);

  @override
  State<FBVideo> createState() => _FBVideoState();
}

class _FBVideoState extends State<FBVideo> {
  bool isSwitched = false;
  List<VideoModel> postList = [
    VideoModel(
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
        videoPostLink: "https://youtu.be/HRxScCbPv4s",
        videoPostTitle: "this is saad post"),
    VideoModel(
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
        videoPostLink: "https://youtu.be/HRxScCbPv4s",
        videoPostTitle: "this is saad post"),
    VideoModel(
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
        videoPostLink: "https://www.youtube.com/watch?v=CGl03WbU4R4",
        videoPostTitle: "this is irtaza post"),
  ];

  List<YoutubePlayerController> _controllers = [];

  @override
  void initState() {
    super.initState();
    my();
  }

  my() {
    _controllers = postList
        .map<YoutubePlayerController>(
          (video) => YoutubePlayerController(
            initialVideoId: YoutubePlayer.convertUrlToId(video.videoPostLink)!,
            flags: const YoutubePlayerFlags(
              autoPlay: false,
            ),
          ),
        )
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Videos",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                Tooltip(
                  message: "play video automatically",
                  child: Switch(
                    value: isSwitched,
                    onChanged: (value) {
                      setState(() {
                        isSwitched = value;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          Divider(
            thickness: 1,
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: ((context, index) {
                return Container(
                  margin: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 8),
                            child: CircleAvatar(
                              backgroundImage: AssetImage(
                                  postList[index].imageAvatar.toString()),
                              radius: 25,
                            ),
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  postList[index].name.toString(),
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                                Wrap(
                                  spacing: 5,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 5),
                                      child:
                                          Text(postList[index].time.toString()),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 10),
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
                              child: Text(
                                  postList[index].videoPostTitle.toString()),
                            ),
                            Container(
                              child: YoutubePlayer(
                                key: ObjectKey(_controllers[index]),
                                controller: _controllers[index],
                                actionsPadding:
                                    const EdgeInsets.only(left: 16.0),
                                bottomActions: [
                                  CurrentPosition(),
                                  const SizedBox(width: 10.0),
                                  ProgressBar(isExpanded: true),
                                  const SizedBox(width: 10.0),
                                  RemainingDuration(),
                                  FullScreenButton(),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
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
                );
              }),
              itemCount: postList.length,
            ),
          )
        ],
      ),
    );
  }
}

class VideoModel {
  final void Function()? avatarOnOressed;
  final void Function()? moreOnPressed;
  final void Function()? likedOnPressed;
  final void Function()? shareOnPressed;
  final void Function()? commentOnPressed;
  final String imageAvatar;
  final String name;
  final String time;
  final String videoPostLink;
  final String videoPostTitle;

  VideoModel({
    this.avatarOnOressed,
    this.moreOnPressed,
    this.likedOnPressed,
    this.shareOnPressed,
    this.commentOnPressed,
    required this.imageAvatar,
    required this.name,
    required this.time,
    required this.videoPostLink,
    required this.videoPostTitle,
  });
}
