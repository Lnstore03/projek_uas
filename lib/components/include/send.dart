import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class SendPage extends StatelessWidget {
  final List<Map<String, String>> contacts = [
    {
      "name": "Adi",
      "image":
          "https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mzh8fHBlb3BsZXxlbnwwfHwwfHx8MA%3D%3D"
    },
    {
      "name": "Arsyad",
      "image":
          "https://images.unsplash.com/photo-1463453091185-61582044d556?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzB8fHBlb3BsZXxlbnwwfHwwfHx8MA%3D%3D"
    },
    {
      "name": "Titin",
      "image":
          "https://images.unsplash.com/photo-1524504388940-b1c1722653e1?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fHBlb3BsZXxlbnwwfHwwfHx8MA%3D%3D"
    },
    {
      "name": "Lukman",
      "image":
          "https://images.unsplash.com/photo-1464746133101-a2c3f88e0dd9?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzZ8fHBlb3BsZXxlbnwwfHwwfHx8MA%3D%3D"
    },
    {
      "name": "Maul",
      "image":
          "https://images.unsplash.com/photo-1501196354995-cbb51c65aaea?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjJ8fHBlb3BsZXxlbnwwfHwwfHx8MA%3D%3D"
    },
    {
      "name": "Yaya",
      "image":
          "https://images.unsplash.com/photo-1529626455594-4ff0802cfb7e?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mjd8fHBlb3BsZXxlbnwwfHwwfHx8MA%3D%3D"
    },
    {
      "name": "Gita",
      "image":
          "https://images.unsplash.com/photo-1488426862026-3ee34a7d66df?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzF8fHBlb3BsZXxlbnwwfHwwfHx8MA%3D%3D"
    },
    {
      "name": "Hadi",
      "image":
          "https://images.unsplash.com/photo-1519085360753-af0119f7cbe7?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NDd8fHBlb3BsZXxlbnwwfHwwfHx8MA%3D%3D"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        elevation: 0.0,
        title: Text(
          'Kirim Uang',
          style: TextStyle(color: Colors.white), // Warna teks menjadi putih
        ),
        iconTheme: IconThemeData(
          color: Colors.white, // Warna panah kembali menjadi putih
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.help_outline,
              size: 24.0,
              color: Colors.white, // Warna ikon menjadi putih
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          Container(
            height: 150,
            width: MediaQuery.of(context).size.width,
            color: Colors.blue,
          ),
          SingleChildScrollView(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(20.0),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      width: 1.0,
                      color: Colors.grey[300]!,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(12.0),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Kirim Cepat",
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 12.0),
                      SizedBox(
                        height: 40.0,
                        child: TextField(
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 19.0,
                          ),
                          decoration: InputDecoration(
                            hintText: "Cari nomor telepon/rekening bank",
                            hintStyle: TextStyle(
                              color: Colors.grey[400],
                              fontSize: 15.0,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              borderSide: BorderSide(
                                color: Colors.grey[300]!,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              borderSide: BorderSide(
                                color: Colors.grey[300]!,
                              ),
                            ),
                            prefixIcon: Icon(
                              Icons.search,
                              size: 20.0,
                              color: Colors.blueGrey[400],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 12.0),
                      GridView.builder(
                        padding: EdgeInsets.zero,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4,
                          mainAxisSpacing: 6,
                          crossAxisSpacing: 6,
                          childAspectRatio: 1.0,
                        ),
                        itemCount:
                            contacts.length, // Number of items in the grid
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (BuildContext context, int index) {
                          return Column(
                            children: [
                              CircleAvatar(
                                backgroundImage: NetworkImage(
                                  contacts[index]["image"]!,
                                ),
                              ),
                              SizedBox(
                                height: 2.0,
                              ),
                              Text(
                                contacts[index]["name"]!,
                                style: TextStyle(
                                  fontSize: 16.0,
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                      const SizedBox(height: 12.0),
                      GestureDetector(
                        onTap: () {
                          // Implement your view all functionality here
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Lihat Semua",
                              style: TextStyle(
                                fontSize: 14.0,
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Icon(
                              MdiIcons.chevronDown,
                              size: 24.0,
                              color: Colors.blue,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Container(
                  padding: const EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      width: 1.0,
                      color: Colors.grey[300]!,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(12.0),
                    ),
                  ),
                  child: Column(
                    children: [
                      GridView.builder(
                        padding: EdgeInsets.zero,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          childAspectRatio: 1.0,
                          crossAxisCount: 3,
                          mainAxisSpacing: 6,
                          crossAxisSpacing: 6,
                        ),
                        itemCount: 3,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (BuildContext context, int index) {
                          return Column(
                            children: [
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.all(10.0),
                                  child: FittedBox(
                                    child: Icon(
                                      index == 0
                                          ? Icons.group
                                          : index == 1
                                              ? Icons.person
                                              : MdiIcons.bank,
                                      color: index == 0
                                          ? Color(0xff01a952)
                                          : index == 1
                                              ? Color(0xff0090f1)
                                              : Color(0xffed8d17),
                                    ),
                                  ),
                                ),
                              ),
                              Text(
                                index == 0
                                    ? "Kirim ke\nGrup"
                                    : index == 1
                                        ? "Kirim ke\nTeman"
                                        : "Kirim ke\nBank",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 12.0,
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                      const SizedBox(height: 12.0),
                      GestureDetector(
                        onTap: () {
                          // Implement your view all functionality here
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Lihat Semua",
                              style: TextStyle(
                                fontSize: 14.0,
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Icon(
                              MdiIcons.chevronDown,
                              size: 24.0,
                              color: Colors.blue,
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
    );
  }
}
