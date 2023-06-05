import "package:flutter/material.dart";
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'fb_friends.dart';
import 'fb_home.dart';
import 'fb_marketplace.dart';
import 'fb_message.dart';
import 'fb_home.dart';
import 'fb_notification.dart';
import 'fb_video.dart';
import 'package:badges/badges.dart' as badges;

import 'fb_profile.dart';

class MainTab extends StatefulWidget {
  const MainTab({super.key});

  @override
  State<MainTab> createState() => _MainTabState();
}

class _MainTabState extends State<MainTab> with SingleTickerProviderStateMixin {
  List mylist = [
    {
      "title": "Message",
      "icons": Icon(
        Icons.message_outlined,
        color: Colors.red,
      )
    },
    {
      "title": "Groups",
      "icons": Icon(
        Icons.person_2_outlined,
        color: Colors.green,
      )
    },
    {
      "title": "Market Place",
      "icons": Icon(Icons.shopping_cart_checkout_outlined, color: Colors.blue)
    },
    {
      "title": "Friends",
      "icons": Icon(Icons.person_search_outlined, color: Colors.blue)
    },
    {
      "title": "Videos",
      "icons": Icon(Icons.video_call_outlined, color: Colors.blue)
    },
  ];

  TabController? _tabcontroller;
  @override
  void initState() {
    _tabcontroller = TabController(length: 5, vsync: this, initialIndex: 0);
    _tabcontroller!.addListener(() {
      setState(() {});
    });
    // TODO: implement initState
    super.initState();
  }

  Future<bool> _onWillPop() async {
    print(_tabcontroller?.index);
    if (_tabcontroller?.index == 0) {
      return true;
    } else {
      _tabcontroller?.index = 0;
      print(_tabcontroller?.index);
      return false;
    }
  }

  //final _scaffoldKey = GlobalKey<ScaffoldState>();
  var scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        key: scaffoldKey,
        //backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            "facebook",
            style: TextStyle(
                fontSize: 34, color: Colors.blue[700], fontFamily: "Klavika"),
          ),
          backgroundColor: Colors.white,
          //foregroundColor: Colors.black,
          actions: [
            Container(
              //height: 20,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromARGB(255, 206, 206, 206)),
              child: IconButton(
                onPressed: (() {}),
                icon: Icon(Icons.search),
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
              ),
            ),
            Container(
              //height: 20,
              margin: EdgeInsets.symmetric(horizontal: 10.0),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromARGB(255, 206, 206, 206)),
              child: IconButton(
                onPressed: (() {
                  //_scaffoldKey.currentState!.openEndDrawer();
                  scaffoldKey.currentState!.openEndDrawer();
                }),
                icon: Icon(Icons.menu),
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
              ),
            )
          ],
          bottom: TabBar(
              controller: _tabcontroller,
              indicatorColor: Colors.black,
              tabs: [
                Icon(
                  Icons.home_outlined,
                  color: Colors.black,
                ),
                Icon(
                  Icons.people_outlined,
                  color: Colors.black,
                ),
                badges.Badge(
                  position: badges.BadgePosition.topEnd(top: -10, end: -12),
                  badgeContent: Text(
                    '3',
                    style: TextStyle(color: Colors.white),
                  ),
                  child: Icon(
                    Icons.message_outlined,
                    color: Colors.black,
                  ),
                ),
                //  Icon(
                //   Icons.notifications_outlined,
                //  color: Colors.black,
                //),
                Icon(
                  Icons.video_library_outlined,
                  color: Colors.black,
                ),
                Icon(
                  Icons.shopping_bag_outlined,
                  color: Colors.black,
                ),
              ]),
        ),
        endDrawer: myDrawer(),
        body: Container(
          child: TabBarView(
            controller: _tabcontroller,
            children: [
              FbHome(),
              FbFriend(),
              FbMessage(),
              // FbNotification(),
              FBVideo(),
              FBMarketPlace()
            ],
          ),
        ),
      ),
    );
  }

  myDrawer() {
    return Drawer(
      width: MediaQuery.of(context).size.width,
      child: Container(
        child: Column(
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: Icon(Icons.arrow_back),
                  ),
                  Text(
                    "Menu",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  CircleAvatar(
                    radius: MediaQuery.of(context).size.height * 0.040,
                    backgroundColor: Colors.grey.withOpacity(0.2),
                    child: Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            ),
            Divider(thickness: 1),
            GestureDetector(
              onTap: () {
                Get.to(FB_Profile());
              },
              child: ListTile(
                leading: CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage("images/images3.jpeg"),
                ),
                title: Text(
                  "Waqas",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                subtitle: Text("View your profile"),
              ),
            ),
            Divider(
              thickness: 1,
            ),
            for (int i = 0; i < 5; i++)
              Container(
                height: 50,
                decoration: BoxDecoration(
                    //border: Border.all(width: 1)
                    ),
                child: Center(
                  child: ListTile(
                    leading: mylist[i]["icons"],
                    title: Text(mylist[i]["title"]),
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }
}
