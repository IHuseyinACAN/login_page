import 'package:flutter/material.dart';

void main() {
  runApp(KrslmApp());
}

class KrslmApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: KrslmPage(),
    );
  }
}

class KrslmPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            color: Color(0xFFE8F8FF),
            child: Center(
              child: Text(
                "Ekran 1",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            color: Color(0xFF91c9e8),
            child: Center(
              child: Text(
                "Ekran 2",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            color: Color(0xFF67b8de),
            child: Center(
              child: Text(
                "Ekran 3",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
