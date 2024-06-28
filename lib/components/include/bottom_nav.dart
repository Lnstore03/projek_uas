import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  final Function(int) onChangePage;
  final int activePage;

  BottomNav(this.onChangePage, this.activePage);

  @override
  _BottomNavState createState() => _BottomNavState(onChangePage, activePage);
}

class _BottomNavState extends State<BottomNav> {
  final Function(int) onChangePage;
  int activeIndex;

  _BottomNavState(this.onChangePage, this.activeIndex);

  Widget _buildNavIcon(String name, IconData icon, int page) {
    var isActive = activeIndex == page;

    return InkWell(
      onTap: () {
        setState(() {
          activeIndex = page;
        });
        onChangePage(page);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Icon(icon, color: isActive ? Colors.blue : Colors.grey),
          Text(name,
              style: TextStyle(
                  color: isActive ? Colors.blue : Colors.grey, fontSize: 10.0))
        ],
      ),
    );
  }

  Widget _buildMainNavIcon(String name, IconData icon, int page) {
    var isActive = activeIndex == page;

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Icon(icon, size: 35, color: isActive ? Colors.blue : Colors.grey),
        Text(name,
            style: TextStyle(
                color: isActive ? Colors.blue : Colors.grey, fontSize: 23.0)),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _buildNavIcon("Beranda", Icons.account_balance_wallet, 0),
          _buildNavIcon("Aktivitas", Icons.email, 1),
          _buildMainNavIcon("Pay", Icons.qr_code_scanner_sharp, 2),
          _buildNavIcon("Dompet", Icons.account_balance_wallet, 3),
          _buildNavIcon("Saya", Icons.person_outline, 4),
        ],
      ),
    );
  }
}
