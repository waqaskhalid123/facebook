import "package:flutter/material.dart";
import 'package:facebook/facebook/whatsapp_user.dart';

class FBStory extends StatefulWidget {
  const FBStory({super.key});

  @override
  State<FBStory> createState() => _FBStoryState();
}

class _FBStoryState extends State<FBStory> {
  List<StoryModel> myStory = [
    StoryModel(image: "images/images5.jpeg", userName: "Waqas"),
    StoryModel(image: "images/images4.jpeg", userName: "Saad"),
    StoryModel(image: "images/images3.jpeg", userName: "Ali"),
    StoryModel(image: "images/images4.jpeg", userName: "Ahmed"),
    StoryModel(image: "images/images5.jpeg", userName: "Inam"),
  ];
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var h = size.height;
    var w = size.width;
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Wrap(children: [
          Container(
            margin: EdgeInsets.only(left: 10, top: 5),
            height: h * 0.40,
            //width: w * 0.50,
            width: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(30)),
              border: Border.all(color: Colors.blueAccent),
            ),
            child: Container(
              height: h * 0.48,
              //width: w * 0.50,
              width: 150,
              child: Stack(
                //fit: StackFit.expand,
                children: [
                  GestureDetector(
                    onTap: () => print("helo"),
                    child: Column(
                      children: [
                        Container(
                          height: h * 0.50 / 2,
                          width: w * 0.50,
                          margin: EdgeInsets.only(
                            bottom: h * 0.05,
                          ),
                          child: ClipRRect(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30)),
                              child: Image.asset(
                                "images/images6.jpeg",
                                fit: BoxFit.cover,
                              )),
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              "Add to story",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: h * 0.025,
                                  fontWeight: FontWeight.bold),
                            )),
                      ],
                    ),
                  ),
                  Center(
                    child: Container(
                      margin: EdgeInsets.only(top: 65),
                      child: Icon(
                        Icons.add_circle_rounded,
                        color: Colors.blueAccent,
                        size: 40,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: SizedBox(
              height: h * 0.50,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return story1(h * 0.40, w * 0.012, h * 0.32, w * 0.01,
                      myStory[index].userName, myStory[index].image);
                },
                itemCount: myStory.length,
              ),
            ),
          ),
        ]),
      ),
    );
    /*Container(
          child: Container(
            //color: Colors.yellow,
            margin: EdgeInsets.all(20),
            child: SingleChildScrollView(
              //physics: NeverScrollableScrollPhysics(),
              //scrollDirection: Axis.horizontal,
              scrollDirection: Axis.horizontal,
              child: Wrap(spacing: 10, children: [
                Container(
                  height: 255,
                  width: 150,
                  decoration: BoxDecoration(
                      //color: Colors.red,
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(20)),
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      GestureDetector(
                        onTap: () => print("helo"),
                        child: Column(
                          children: [
                            Container(
                              height: 170,
                              margin: EdgeInsets.only(bottom: 30.0),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      topRight: Radius.circular(20)),
                                  child: Image.asset(
                                    "images/images6.jpeg",
                                    fit: BoxFit.cover,
                                  )),
                            ),
                            TextButton(
                                onPressed: () {},
                                child: Text(
                                  "Add to story",
                                  style: TextStyle(color: Colors.black),
                                )),
                          ],
                        ),
                      ),
                      Positioned(
                        top: 150,
                        left: 50,
                        child: IconButton(
                            onPressed: (() {}),
                            icon: Icon(
                              Icons.add_circle_rounded,
                              color: Colors.blueAccent,
                            )),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    height: 250,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return story(
                            storydata[index].image, storydata[index].userName);
                      },
                      itemCount: storydata.length,
                    ),
                  ),
                )
                /* for (int i = 0; i < storydata.length; i++) ...[
                  story(storydata[i].image, storydata[i].userName)
                ],*/
              ]),
            ),
          ),
        )*/
  }

  Widget story1(
    var h,
    var fontS,
    var textHeight,
    var textWidth,
    var name,
    var image,
  ) {
    return Stack(children: [
      Container(
          margin: EdgeInsets.only(left: 15, top: 5, right: 5),
          height: h,
          width: 150,
          decoration: BoxDecoration(
              color: Colors.yellow,
              borderRadius: BorderRadius.all(Radius.circular(30))),
          child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(30)),
              child: Image.asset(image, fit: BoxFit.cover))),
      Positioned(
        top: textHeight,
        left: 20,
        child: TextButton(
          onPressed: (() {}),
          child: Text(
            name,
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ),
      )
    ]);
  }
}
