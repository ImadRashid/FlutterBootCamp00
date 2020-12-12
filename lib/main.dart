import 'package:flutter/material.dart';

void main() {
  return runApp(MyApp());
}

// App widget
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomeScreen(),
    );
  }
}

// Home Screens
class MyHomeScreen extends StatefulWidget {
  @override
  _MyHomeScreenState createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Boot Camp"),
      ),
      floatingActionButton: FloatingActionButton(
        // onPressed: ,
        onPressed: () {
          setState(() {
            counter = counter + 1;
          });
        },

        child: Icon(Icons.add),
      ),
      body: Center(
        child: Text(
          "This is my Count:  $counter",
          style: TextStyle(
            color: Colors.black,
            fontSize: 29,
          ),
        ),
      ),
    );
  }
}
