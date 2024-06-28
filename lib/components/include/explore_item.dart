import 'package:flutter/material.dart';

class ExploreItem extends StatefulWidget {
  @override
  _ExploreItemState createState() => _ExploreItemState();
}

class _ExploreItemState extends State<ExploreItem> {
  final List<String> bannerImages = [
    'images/1.jpeg',
    'images/2.jpeg',
    'images/3.jpeg',
    'images/4.jpeg'
  ];

  Widget buildItemBanner(String path) {
    return Container(
      width: 150.0,
      height: 50.0,
      margin: EdgeInsets.only(right: 10.0),
      child: Image.asset(path, fit: BoxFit.cover),
    );
  }

  Widget buildDANAUnderstand() {
    return Container(
      width: 150.0,
      height: 50.0,
      margin: EdgeInsets.only(right: 10.0),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Image.asset(
            'images/DANA_logo_blue.png',
            width: 60.0,
          ),
          Text("Saya Mengerti DANA", style: TextStyle(color: Colors.blue)),
          InkWell(
            onTap: () {
              // Add desired action on tap
            },
            child: Container(
              color: Colors.blue,
              width: 150.0,
              padding: EdgeInsets.all(10.0),
              child: Text(
                'TUTUP',
                style: TextStyle(color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
          )
        ],
      ),
    );
  }

  List<Widget> buildScrollInfo() {
    List<Widget> items =
        bannerImages.map((path) => buildItemBanner(path)).toList();
    items.add(buildDANAUnderstand());
    return items;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10.0),
      height: 200.0,
      width: double.infinity,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: buildScrollInfo(),
      ),
    );
  }
}
