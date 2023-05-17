import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.lightBlue,
        leading: Icon(Icons.menu),
        title: Text(
          "Chit Chat",
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        actions: [
          Padding(
              padding: EdgeInsets.only(right: 10),
              child: Icon(
                Icons.search,
                size: 30,
              ))
        ],
      ),
      body: ListTile(
        contentPadding: EdgeInsets.only(top: 5, left: 10),
        leading: CircleAvatar(
          radius: 30,
          backgroundImage: ExactAssetImage('assets/sehun.jpeg'),
        ),
        title: Padding(
          padding: EdgeInsets.only(right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Sehun",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
              ),
              Text(
                "11.00pm",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
              ),
            ],
          ),
        ),
        subtitle: Padding(
          padding: EdgeInsets.only(right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Apa Kabar Fitri?",
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              Container(
                child: Text(
                  "2",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
                decoration: BoxDecoration(
                    border: Border.all(width: 1),
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.grey),
              )
            ],
          ),
        ),
      ),
    );
  }
}
