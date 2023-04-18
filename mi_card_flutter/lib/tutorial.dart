import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          title: const Center(child: Text('Demo')),
        ),
        backgroundColor: Colors.yellow[800],
        body: SafeArea(
          child: Row(
            //mainAxisSize: MainAxisSize.min,
            //mainAxisAlignment: MainAxisAlignment.center,
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //verticalDirection: VerticalDirection.up,
            //crossAxisAlignment: CrossAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment
                .stretch, // stretch across the screen to the largest children
            children: <Widget>[
              Container(
                  height: 100.0,
                  width: 150.0,
                  //margin: EdgeInsets.all(10.0),
                  //margin: EdgeInsets.fromLTRB(5.0. 5.0, 10.0, 10.0),
                  //margin: EdgeInsets.only(left: 10.0)
                  //margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
                  //padding: EdgeInsets.all(10.0),
                  color: Colors.white,
                  child: Text('Container 1')),
              SizedBox(height: 10.0, width: 10.0),
              Container(
                  height: 100.0,
                  width: 100.0,
                  color: Colors.blue,
                  child: Text('Container 2')),
              Container(
                  height: 100.0,
                  width: 100.0,
                  color: Colors.red,
                  child: Text('Container 3')),
              // Container(width: double.infinity), // Create a container that forces crossaxisalignment end to the right
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blue[900],
          child: Icon(Icons.add),
          onPressed: () {},
        ),
      ),
    );
  }
}
