import 'package:flutter/material.dart';

// The main function is what Flutter will run when it starts
// The MaterialApp is the granddaddy of all widgets
// The starting point in the MaterialApp is the home key
// Center is a widget itself that does placement of its children

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: const Center(
            child: Text('I Am Rich'),
          ),
          backgroundColor: Colors.blueGrey[900],
        ),
        body: const Center(
          child: Image(
            image: AssetImage('images/diamond.png'),
          ),
        ),
      ),
    ),
  );
}
