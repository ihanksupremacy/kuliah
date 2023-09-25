import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginScreen(),
      routes: {
        '/youdidit': (context) => YouDidItScreen(),
      },
    );
  }
}

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.diamond,
                size: 50.0,
              ),
              Text("Shrine"),
              SizedBox(
                height: 20,
              ),
              TextField(
                autocorrect: false,
                decoration: const InputDecoration(
                  filled: true,
                  labelText: "Username",
                ),
              ),
              TextField(
                autocorrect: false,
                decoration: const InputDecoration(
                  filled: true,
                  labelText: "Password",
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  TextButton(
                    onPressed: () {
                      // Clear username field
                    },
                    child: Text("Text"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/youdidit');
                    },
                    child: Text("Next"),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class YouDidItScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("You did it!"),
      ),
      body: Center(
        child: Text("You did it!"),
      ),
    );
  }
}
