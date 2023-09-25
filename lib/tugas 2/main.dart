import 'package:flutter/material.dart';
import '../youdidit.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp();

  @override
  Widget build(BuildContext context) {
    Widget login = Container(
      child: Container(
        child: Column(
          children: [
            const Icon(
              Icons.diamond,
              size: 50.0,
            ),
            Text("shrine"),
          ],
        ),
      ),
    );
    return MaterialApp(
      routes: {
        'youdidit': (context) => youdidit(),
      },
      home: Scaffold(
        appBar: AppBar(
          title: Text("adsasds"),
        ),
        body: Center(
          child: Container(
            width: 300,
            child: Column(
              children: [
                SizedBox(
                  height: 130,
                ),
                login,
                SizedBox(
                  height: 50,
                ),
                TextField(
                  autocorrect: false,
                  decoration: const InputDecoration(
                      filled: true, labelText: "username"),
                ),
                TextField(
                  autocorrect: false,
                  decoration: const InputDecoration(
                      filled: true, labelText: "password"),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {
                        // _usernameController.clear();
                      },
                      child: Text("text"),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, 'youdidit');
                      },
                      child: Text("Next"),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class youdidit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: const Column(
            children: [],
          ),
        ),
      ),
    );
  }
}
