import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart'; // Pastikan untuk mengimpor ikon Material Design

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 160,
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Column(
                          children: [
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage: NetworkImage(
                                "https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mzh8fHBlb3BsZXxlbnwwfHwwfHx8MA%3D%3D",
                              ),
                            ),
                            SizedBox(height: 4.0),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 6.0, vertical: 4.0),
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12.0)),
                                color: Colors.white.withOpacity(0.4),
                              ),
                              child: Row(
                                children: [
                                  Icon(Icons.wallet,
                                      size: 20.0, color: Colors.white),
                                  SizedBox(width: 4.0),
                                  Text(
                                    "PREMIUM",
                                    style: TextStyle(
                                        fontSize: 15.0, color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 12.0),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "ADI LUKMAN",
                                style: TextStyle(
                                    fontSize: 16.0, color: Colors.white),
                              ),
                              SizedBox(height: 4.0),
                              Text(
                                "0857******68",
                                style: TextStyle(
                                    fontSize: 14.0, color: Colors.white),
                              ),
                              SizedBox(height: 4.0),
                              OutlinedButton.icon(
                                icon: Icon(Icons.qr_code_scanner, size: 16.0),
                                label: Text("TAMPILKAN QR >",
                                    style: TextStyle(fontSize: 12.0)),
                                style: OutlinedButton.styleFrom(
                                  foregroundColor: Colors.white,
                                  shape: StadiumBorder(),
                                  side: BorderSide(color: Colors.white),
                                ),
                                onPressed: () {},
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x19000000),
                          blurRadius: 24,
                          offset: Offset(0, 11),
                        ),
                      ],
                      border: Border.all(width: 1.0, color: Colors.grey),
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                    ),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(19.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x19000000),
                                blurRadius: 24,
                                offset: Offset(0, 11),
                              ),
                            ],
                            border: Border.all(width: 1.0, color: Colors.grey),
                            borderRadius:
                                BorderRadius.all(Radius.circular(12.0)),
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Bikin username di Feed",
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(height: 8.0),
                                    SizedBox(
                                      height: 8,
                                      child: LinearProgressIndicator(
                                        value: 0.6,
                                      ),
                                    ),
                                    Text(
                                      "Kasih liat ke temanmu itu kamu",
                                      style: TextStyle(
                                          fontSize: 10.0, color: Colors.grey),
                                    ),
                                  ],
                                ),
                              ),
                              Icon(
                                MdiIcons.chevronRight,
                                color: Colors.grey,
                                size: 24,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 12.0),
                        Container(
                          padding: EdgeInsets.all(16.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x19000000),
                                blurRadius: 24,
                                offset: Offset(0, 11),
                              ),
                            ],
                            border: Border.all(width: 1.0, color: Colors.grey),
                            borderRadius:
                                BorderRadius.all(Radius.circular(12.0)),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(20.0),
                            child: Builder(
                              builder: (context) {
                                List<Map<String, dynamic>> menuItems = [
                                  {
                                    "icon": MdiIcons.wallet,
                                    "color": Colors.blue,
                                    "label": "Saldo",
                                    "value": "Rp30",
                                  },
                                  {
                                    "icon": MdiIcons.gold,
                                    "color": Colors.blue,
                                    "label": "Dana Goals",
                                    "value": "les",
                                  },
                                  {
                                    "icon": MdiIcons.target,
                                    "color": Colors.blue,
                                    "label": "Balance",
                                    "value": "uou",
                                  },
                                  {
                                    "icon": MdiIcons.chartLine,
                                    "color": Colors.blue,
                                    "label": "Balance",
                                    "value": "asssa",
                                  },
                                  {
                                    "icon": MdiIcons.chartLine,
                                    "color": Colors.blue,
                                    "label": "Balance",
                                    "value": "asssa",
                                  },
                                  {
                                    "icon": MdiIcons.chartLine,
                                    "color": Colors.blue,
                                    "label": "Balance",
                                    "value": "asssa",
                                  },
                                ];
                                return GridView.builder(
                                  padding: EdgeInsets.zero,
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                    childAspectRatio: 1.0,
                                    crossAxisCount: 3,
                                    mainAxisSpacing: 6,
                                    crossAxisSpacing: 6,
                                  ),
                                  itemCount: menuItems.length,
                                  shrinkWrap: true,
                                  physics: NeverScrollableScrollPhysics(),
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    var item = menuItems[index];
                                    return Container(
                                      color: Colors.white,
                                      child: Column(
                                        children: [
                                          Expanded(
                                            child: FittedBox(
                                              child: Icon(
                                                item["icon"],
                                                size: 24.0,
                                                color: item["color"],
                                              ),
                                            ),
                                          ),
                                          Text(
                                            item["label"],
                                            style: TextStyle(
                                                fontSize: 14.0,
                                                color: Colors.black),
                                          ),
                                          SizedBox(height: 4.0),
                                          Text(
                                            item["value"],
                                            style: TextStyle(
                                                fontSize: 12.0,
                                                color: Colors.grey),
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                );
                              },
                            ),
                          ),
                        ),
                        Divider(),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Expanded(
                                child: Row(
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: Color(0xffdef8eb),
                                      child: Icon(
                                        Icons.arrow_upward,
                                        color: Color(0xff3ec17d),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 12.0,
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Masuk",
                                            style: TextStyle(
                                              fontSize: 12.0,
                                              color: Colors.grey,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 4.0,
                                          ),
                                          Text(
                                            "Rp.2.340.000",
                                            style: TextStyle(
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: Color(0xfffeefe2),
                                      child: Icon(
                                        Icons.arrow_downward,
                                        color: Color(0xffdd932d),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 12.0,
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Keluar",
                                            style: TextStyle(
                                              fontSize: 12.0,
                                              color: Colors.grey,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 4.0,
                                          ),
                                          Text(
                                            "Rp.2.245.000",
                                            style: TextStyle(
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 12.0),
                  Container(
                    padding: EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x19000000),
                          blurRadius: 24,
                          offset: Offset(0, 11),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
