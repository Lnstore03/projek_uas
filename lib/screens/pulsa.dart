import 'package:flutter/material.dart';

class Pulsa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pulsa"),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height -
              kToolbarHeight -
              24.0, // 24.0 for status bar height
          child: Column(
            children: <Widget>[
              Container(
                color: Colors.blue,
                height: 100.0, // Adjust height as needed
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    children: <Widget>[
                      PhoneNumberInput(),
                      // Add more widgets here as needed
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget PhoneNumberInput() {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: "Enter phone number",
                border: OutlineInputBorder(),
              ),
            ),
          ),
          SizedBox(width: 10.0),
          Icon(Icons.contact_phone),
        ],
      ),
    );
  }
}
