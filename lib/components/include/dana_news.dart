import 'package:flutter/material.dart';
import 'package:dana1/models/news.dart';

class DanaNews extends StatefulWidget {
  @override
  _DanaNewsState createState() => _DanaNewsState();
}

class _DanaNewsState extends State<DanaNews> {
  final List<News> newsData = [
    News("Isi saldo DANA lebih mudah", "Sekarang bisa di Pegadaian",
        "images/news_1.jpeg"),
    News(
        "DANA Kaget ada disini!", "Bagi uang lebih seru", "images/news_2.jpeg"),
    News("Jajan seru cashback 50%!", "Temukan infonya disini",
        "images/news_3.jpeg"),
    News("Bayar pake DANA", "tinggal 3 detik scan", "images/news_4.jpeg"),
  ];

  Widget buildNewsItems() {
    return Container(
      margin: EdgeInsets.only(top: 10.0),
      child: Column(
        children: newsData.map((news) => buildNewsItem(news)).toList(),
      ),
    );
  }

  Widget buildNewsItem(News news) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10.0),
      margin: EdgeInsets.only(
          bottom: 10.0), // Tambahan margin untuk memberikan jarak antar item
      child: Row(
        children: <Widget>[
          Image.asset(
            news.image_asset,
            height: 55.0,
            width: 55.0,
            fit: BoxFit.cover,
          ),
          SizedBox(
              width: 10.0), // Menggunakan SizedBox untuk jarak antar elemen
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  news.title,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
                ),
                Text(
                  news.desc,
                  style: TextStyle(fontSize: 11.0),
                )
              ],
            ),
          ),
          Icon(Icons.arrow_forward_ios, color: Colors.grey)
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      margin: EdgeInsets.only(top: 10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Berita DANA',
            style: TextStyle(
                color: Colors.grey,
                fontSize: 16.0,
                fontWeight: FontWeight.bold), // Penyesuaian style
          ),
          buildNewsItems()
        ],
      ),
    );
  }
}
