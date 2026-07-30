import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue.shade100,
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Center(
          child: Container(
            width: 200,
            height: 300,
            color: Color(0xffb73333),
            alignment: Alignment.center,
            child: Text(
              "Hello Flutter",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
