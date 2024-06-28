import 'package:dana1/components/include/Topuppage.dart';
import 'package:dana1/components/include/request.dart';
import 'package:dana1/components/include/scanpage.dart';
import 'package:dana1/components/include/send.dart';
import 'package:flutter/material.dart';
import 'package:dana1/components/include/header_balance.dart';
import 'package:dana1/components/include/payment_menu.dart';
import 'package:dana1/components/include/main_promo_swipe.dart';
import 'package:dana1/components/include/explore_dana.dart';
import 'package:dana1/components/include/dana_news.dart';
import 'package:dana1/components/include/bottom_nav.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

void main() {
  runApp(MaterialApp(
    home: Dashboard(),
  ));
}

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int activeIndex = 0;

  void _onTabTapped(int index) {
    setState(() {
      activeIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue, // Mengubah warna AppBar menjadi biru
        elevation: 0.0,
        centerTitle: false,
        title: HeaderBalance(),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.email_outlined, color: Colors.white),
            tooltip: 'Pesan',
            onPressed: () {
              // Implementasikan fungsi untuk tombol pesan
            },
          ),
        ],
      ),
      body: IndexedStack(
        index: activeIndex,
        children: [
          HomeScreen(),
          ActivityScreen(),
          PayScreen(),
          WalletScreen(),
          ProfileScreen(),
        ],
      ),
      bottomNavigationBar: BottomNav(_onTabTapped, activeIndex),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: SingleChildScrollView(
              physics: ClampingScrollPhysics(),
              child: Column(
                children: <Widget>[
                  _buildMainMenu(context),
                  PaymentMenu(),
                  MainPromoSwipe(),
                  ExploreDana(),
                  DanaNews(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMainMenu(BuildContext context) {
    return Container(
      color: Colors.blue,
      padding: EdgeInsets.all(35.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          _buildMainMenuButton(context, "Pindai", Icons.document_scanner, () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ScanPage()),
            );
          }),
          _buildMainMenuButton(context, "Isi Saldo", Icons.add_chart_outlined,
              () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => TopUpPage()),
            );
          }),
          _buildMainMenuButton(context, "Kirim", Icons.send, () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SendPage()),
            );
          }),
          _buildMainMenuButton(context, "Minta", Icons.monetization_on, () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => RequestPage()),
            );
          }),
        ],
      ),
    );
  }

  Widget _buildMainMenuButton(BuildContext context, String label, IconData icon,
      VoidCallback onPressed) {
    return GestureDetector(
      onTap: onPressed,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(icon, color: Colors.white, size: 30),
          SizedBox(height: 5), // Menambahkan sedikit jarak antara ikon dan teks
          Text(label,
              style: TextStyle(color: Color.fromARGB(255, 243, 242, 242))),
        ],
      ),
    );
  }
}

class ActivityScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Aktivitas Kosong'));
  }
}

class PayScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Pay Kosong'));
  }
}

class WalletScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Dompet Kosong'));
  }
}

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
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(15.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x19000000),
                              blurRadius: 1,
                              offset: Offset(0, 1),
                            ),
                          ],
                          border: Border.all(width: 1.0, color: Colors.grey),
                          borderRadius: BorderRadius.all(Radius.circular(8.0)),
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
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 8.0),
                                  SizedBox(
                                    height: 8,
                                    child: LinearProgressIndicator(
                                      value: 0.6,
                                      color: Colors.blue,
                                    ),
                                  ),
                                  Text(
                                    "Kasih liat ke temanmu itu kamu!",
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
                              blurRadius: 1,
                              offset: Offset(0, 1),
                            ),
                          ],
                          border: Border.all(width: 1.0, color: Colors.grey),
                          borderRadius: BorderRadius.all(Radius.circular(8.0)),
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
                                  "icon": MdiIcons.target,
                                  "color": Colors.red,
                                  "label": "Dana Goals",
                                  "value": "Buat Impian",
                                },
                                {
                                  "icon": MdiIcons.familyTree,
                                  "color": Colors.orange,
                                  "label": "Rek.Keluarga",
                                  "value": "Aktivasi Yuk!",
                                },
                                {
                                  "icon": MdiIcons.walletGiftcard,
                                  "color": Colors.blue,
                                  "label": "DANA CICIL",
                                  "value": ""
                                },
                                {
                                  "icon": MdiIcons.gold,
                                  "color": Colors.orange,
                                  "label": "eMas",
                                  "value": "Mulai Inves Yuk",
                                },
                                {
                                  "icon": MdiIcons.chartLine,
                                  "color": Colors.green,
                                  "label": "Reksa Dana",
                                  "value": "Mulai Inves Yuk",
                                },
                              ];
                              return GridView.builder(
                                padding: EdgeInsets.zero,
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                  childAspectRatio: 1.0,
                                  crossAxisCount: 3,
                                  mainAxisSpacing: 10,
                                  crossAxisSpacing: 10,
                                ),
                                itemCount: menuItems.length,
                                shrinkWrap: true,
                                physics: NeverScrollableScrollPhysics(),
                                itemBuilder: (BuildContext context, int index) {
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
                                    backgroundColor: Colors.green,
                                    child: Icon(
                                      Icons.arrow_downward,
                                      color: Colors.white,
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
                                          "Uang Masuk",
                                          style: TextStyle(
                                            fontSize: 12.0,
                                            color: Colors.grey,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 4.0,
                                        ),
                                        Text(
                                          "Rp.500.000.000",
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
                                    backgroundColor: Colors.orange,
                                    child: Icon(
                                      Icons.arrow_upward,
                                      color: Colors.white,
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
                                          "Uang Keluar",
                                          style: TextStyle(
                                            fontSize: 12.0,
                                            color: Colors.grey,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 4.0,
                                        ),
                                        Text(
                                          "Rp.214.400.000",
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
                  SizedBox(height: 12.0),
                  Container(
                    padding: EdgeInsets.all(12.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x19000000),
                          blurRadius: 0,
                          offset: Offset(0, 1),
                        ),
                      ],
                      border: Border.all(width: 1.0, color: Colors.grey),
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "DIANA siap membantu!",
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 2.0),
                              Text(
                                "Yuk ngobrol langsung untuk\nmendapatkan bantuan",
                                style: TextStyle(
                                    fontSize: 13.0, color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                        Icon(
                          MdiIcons.chevronRight,
                          color: Colors.grey,
                          size: 28,
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
