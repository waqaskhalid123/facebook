import 'package:flutter/material.dart';

class FbMessage extends StatefulWidget {
  const FbMessage({super.key});

  @override
  State<FbMessage> createState() => _FbMessageState();
}

class _FbMessageState extends State<FbMessage> {
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
                  "Messages",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Wrap(
                  spacing: 10,
                  children: [
                    CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 187, 182, 182),
                      child: Icon(
                        Icons.message_outlined,
                        color: Colors.black,
                      ),
                    ),
                    CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 187, 182, 182),
                      child: Icon(
                        Icons.settings,
                        color: Colors.black,
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
    return Container(
      //color: Colors.red,
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Center(
        child: ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage("images/images4.jpeg"),
              radius: 30,
            ),
            title: Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: Text(
                "Waqas",
                style: TextStyle(fontSize: 18),
              ),
            ),
            subtitle: Text("23:20"),
            trailing: Icon(Icons.phone_android_outlined)),
      ),
    );
  }
}
