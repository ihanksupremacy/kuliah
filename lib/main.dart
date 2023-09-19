import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
        padding: EdgeInsets.only(left: 32, right: 32, top: 32, bottom: 3.0),
        child: Row(
          children: [
            Container(
              child: Icon(
                Icons.account_circle_sharp,
                size: 100.0,
              ),
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Raihan Muhaimin",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text("Mobile App Developer"),
                ],
              ),
            ),
          ],
        ));

    Widget alamat = Container(
      padding: EdgeInsets.only(left: 60.0, right: 60.0, top: 3.0, bottom: 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            child: Text("permindo asri"),
          ),
          Container(
            child: Text("082284269694"),
          ),
        ],
      ),
    );

    Color color = Theme.of(context).primaryColor;

    Widget button = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.accessibility_outlined, 'CALL'),
        _buildButtonColumn(color, Icons.timer_outlined, 'ROUTE'),
        _buildButtonColumn(color, Icons.phone_android_sharp, 'SHARE'),
        _buildButtonColumn(color, Icons.phone_iphone_sharp, 'SHARE'),
      ],
    );

    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Kartu Nama Saya'),
        ),
        body: ListView(
          children: [
            titleSection,
            alamat,
            button,
          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
