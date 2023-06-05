import 'package:flutter/material.dart';

class FbFriend extends StatefulWidget {
  const FbFriend({super.key});

  @override
  State<FbFriend> createState() => _FbFriendState();
}

class _FbFriendState extends State<FbFriend> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Friends",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Wrap(
                  spacing: 10,
                  children: [
                    CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 187, 182, 182),
                      child: Icon(
                        Icons.person,
                        color: Colors.green,
                      ),
                    ),
                    CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 187, 182, 182),
                      child: Icon(
                        Icons.person_add,
                        color: Colors.red,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Divider(thickness: 1),
          Expanded(
            child: ListView(children: [
              ListView.builder(
                itemBuilder: (context, index) {
                  return mylist();
                },
                itemCount: 10,
                shrinkWrap: true,
              ),
            ]),
          ),
        ],
      ),
    );
  }

  mylist() {
    var s = MediaQuery.of(context).size;
    var w = s.width;
    var h = s.height;
    return Container(
      //color: Colors.red,
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Center(
        child: ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage("images/images4.jpeg"),
            radius: 30,
          ),
          title: Text(
            "Waqas",
            style: TextStyle(fontSize: 18),
          ),
          trailing: Wrap(
            spacing: 10,
            children: [
              TextButton(
                onPressed: (() {}),
                child: Text("Confirm"),
                style: TextButton.styleFrom(
                  padding: EdgeInsets.symmetric(
                      horizontal: w * 0.010, vertical: h * 0.010),
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.blueAccent,
                  disabledForegroundColor: Colors.grey.withOpacity(0.38),
                ),
              ),
              TextButton(
                onPressed: (() {}),
                child: Text(
                  "delete",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                style: TextButton.styleFrom(
                  padding: EdgeInsets.symmetric(
                      horizontal: w * 0.010, vertical: h * 0.010),
                  foregroundColor: Colors.black,
                  backgroundColor: Colors.grey.withOpacity(0.38),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
