import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class TopUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> banks = [
      {"imageUrl": "https://i.ibb.co.com/vVs6D0f/bri.png"},
      {"imageUrl": "https://i.ibb.co.com/tYQrdbq/niaga.png"},
      {"imageUrl": "https://i.ibb.co.com/7b47XLT/bca-removebg-preview.png"}
    ];

    final List<Map<String, String>> agents = [
      {"Url": "https://i.ibb.co.com/yNpqXh7/indomart.png"},
      {"Url": "https://i.ibb.co.com/ftK13bR/alfa.png"},
      {"Url": "https://i.ibb.co.com/vZzRLsw/brilink.jpg"}
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Isi Saldo',
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: IconThemeData(
          color: Colors.white, // Warna panah kembali menjadi putih
        ),
        actions: [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      "Mau Isi Saldo Dana Kamu\ndengan cara apa?",
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    alignment: Alignment.topRight,
                    icon: const Icon(
                      Icons.help_outline,
                      size: 24.0,
                      color: Colors.blue, // Warna ikon menjadi putih
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                "KARTU PEMBAYARAN SAYA",
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.grey[600],
                ),
              ),
              SizedBox(
                height: 4.0,
              ),
              Container(
                padding: const EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(8.0),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.1),
                      spreadRadius: 1,
                      blurRadius: 1,
                      offset: Offset(0, 1),
                    ),
                  ],
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 40.0,
                      height: 30.0,
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          padding: const EdgeInsets.all(0.0),
                          foregroundColor: Colors.blue,
                          backgroundColor: Color.fromARGB(15, 92, 103, 110),
                          side: BorderSide(
                            color: Colors.blue,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                        onPressed: () {},
                        child: const Icon(
                          Icons.add,
                          size: 24.0,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 8.0,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Kartu BARU",
                            style: TextStyle(
                              fontSize: 14.0,
                            ),
                          ),
                          SizedBox(
                            height: 4.0,
                          ),
                          Row(
                            children: [
                              Image.network(
                                "https://cdn-icons-png.flaticon.com/128/196/196578.png",
                                height: 24,
                                fit: BoxFit.fill,
                              ),
                              SizedBox(
                                width: 6.0,
                              ),
                              Image.network(
                                "https://cdn-icons-png.flaticon.com/128/11378/11378185.png",
                                height: 24,
                                fit: BoxFit.fill,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Icon(
                      Icons.chevron_right,
                      size: 24.0,
                      color: Colors.grey[400],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                "TRANSFER BANK",
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                height: 4.0,
              ),
              Container(
                padding: const EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(8.0),
                  ),
                ),
                child: Column(
                  children: [
                    ListView.builder(
                      itemCount: banks.length,
                      shrinkWrap: true,
                      physics: ScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) {
                        return ListTile(
                          leading: Image.network(
                            banks[index]['imageUrl']!,
                            height: 48.0,
                            fit: BoxFit.cover,
                          ),
                          trailing: Icon(
                            Icons.chevron_right,
                            size: 24.0,
                            color: Colors.grey[400],
                          ),
                        );
                      },
                    ),
                    ListTile(
                      title: Text(
                        "Tampilkan semua bank",
                        style: TextStyle(
                          fontSize: 12.0,
                          color: Colors.blue,
                        ),
                      ),
                      subtitle: Text(
                        "Permata, Panin dan bank lainnya",
                        style: TextStyle(
                          fontSize: 12.0,
                          color: Colors.grey,
                        ),
                      ),
                      trailing: Icon(
                        MdiIcons.chevronDown,
                        size: 24.0,
                        color: Colors.grey[400],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 4.0,
              ),
              Text(
                "AGEN",
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                height: 4.0,
              ),
              Container(
                padding: const EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      8.0,
                    ),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      title: Text(
                        "Agen Terdekat",
                        style: TextStyle(
                          fontSize: 14.0,
                        ),
                      ),
                      subtitle: Text(
                        "Temukan Top up agen terdekat!",
                        style: TextStyle(
                          fontSize: 9.0,
                          color: Colors.grey,
                        ),
                      ),
                      trailing: Transform.scale(
                        scale: 0.65,
                        alignment: Alignment.centerRight,
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            foregroundColor: Colors.blue,
                            side: BorderSide(
                              color: Colors.blue,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(7.0),
                            ),
                          ),
                          onPressed: () {},
                          child: Text(
                            "BUKA PETA",
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    ListView.builder(
                      itemCount: agents.length,
                      shrinkWrap: true,
                      physics: ScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) {
                        return ListTile(
                          leading: Image.network(
                            agents[index]['Url']!,
                            height: 32.0,
                            fit: BoxFit.cover,
                          ),
                          trailing: Icon(
                            Icons.chevron_right,
                            size: 24.0,
                            color: Colors.grey[400],
                          ),
                        );
                      },
                    ),
                    ListTile(
                      title: Text(
                        "Tampilkan agen lainnya",
                        style: TextStyle(
                          fontSize: 12.0,
                          color: Colors.blue,
                        ),
                      ),
                      subtitle: Text(
                        "BNI, Mandiri dan agen lainnya.",
                        style: TextStyle(
                          fontSize: 12.0,
                          color: Colors.grey,
                        ),
                      ),
                      trailing: Icon(
                        MdiIcons.chevronDown,
                        size: 24.0,
                        color: Colors.grey[400],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
