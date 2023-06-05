import 'package:flutter/material.dart';
import 'whatsapp_user.dart';

class FBMarketPlace extends StatefulWidget {
  const FBMarketPlace({super.key});

  @override
  State<FBMarketPlace> createState() => _FBMarketPlaceState();
}

List<MarketPlace> marketList = [
  MarketPlace(
      title: "Coat for sale", price: 5000, photo: "images/images1.jpeg"),
  MarketPlace(
      title: "Pent for sale", price: 6000, photo: "images/images2.jpeg"),
  MarketPlace(
      title: "Shirt for sale", price: 7000, photo: "images/images3.jpeg"),
  MarketPlace(title: " for sale", price: 8000, photo: "images/images4.jpeg"),
  MarketPlace(
      title: "watch for sale", price: 9000, photo: "images/images5.jpeg"),
  MarketPlace(
      title: "watch for sale", price: 9000, photo: "images/images5.jpeg"),
  MarketPlace(
      title: "watch for sale", price: 9000, photo: "images/images5.jpeg"),
  MarketPlace(
      title: "watch for sale", price: 9000, photo: "images/images5.jpeg"),
];

class _FBMarketPlaceState extends State<FBMarketPlace> {
  @override
  @override
  Widget build(BuildContext context) {
    var s = MediaQuery.of(context).size;
    var h = s.height;
    var w = s.width;
    MediaQuery.of(context).orientation;

    return Scaffold(
        body: Column(children: [
      Container(
        padding: EdgeInsets.all(10),
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Market Place",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            CircleAvatar(
              backgroundColor: Color.fromARGB(255, 187, 182, 182),
              child: Icon(
                Icons.search,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
      Expanded(
        child: GridView.builder(
          itemCount: marketList.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 5,
              crossAxisSpacing: 5,
              childAspectRatio: (3 / 3)),
          itemBuilder: (context, index) {
            return Expanded(
              child: Container(
                key: UniqueKey(),
                child: Card(
                  key: UniqueKey(),
                  //color: Colors.red,
                  child: Column(
                    key: UniqueKey(),
                    //crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                          flex: 70,
                          child: Container(
                            width: double.infinity,
                            //color: Colors.red,
                            child: Image.asset(
                              (marketList[index].photo).toString(),
                              fit: BoxFit.fill,
                            ),
                          )),
                      Expanded(
                        flex: 30,
                        child: Container(
                          key: UniqueKey(),
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.only(left: w * 0.03),
                          //margin: EdgeInsets.only(right: w * 0.25),
                          //padding: EdgeInsets.symmetric(horizontal: w * 0.03),
                          //color: Colors.yellow,
                          child: Column(
                              key: UniqueKey(),
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(0),
                                      child: Text(
                                          (marketList[index].title).toString(),
                                          style: TextStyle(
                                              fontSize: w * 0.030,
                                              fontWeight: FontWeight.bold)),
                                    ),
                                    Spacer(flex: 1)
                                  ],
                                ),
                                Row(
                                  children: [
                                    Padding(
                                        padding: const EdgeInsets.all(0),
                                        child: Text(
                                          (marketList[index].price).toString(),
                                          style: TextStyle(
                                              fontSize: w * 0.030,
                                              fontWeight: FontWeight.bold),
                                        )),
                                    Spacer(flex: 1)
                                  ],
                                ),
                              ]),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    ]));
  }

  myGrid() {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
      ),
      itemBuilder: (context, index) {
        return Container(
          height: 150,
          width: 150,
          child: Card(
            //color: Colors.red,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    //color: Colors.yellow,
                    height: 130,
                    width: double.infinity,
                    child: Image.asset(
                      "images/images4.jpeg",
                      fit: BoxFit.contain,
                    )),
                SizedBox(
                  height: 8,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    "Title",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    "Price",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
