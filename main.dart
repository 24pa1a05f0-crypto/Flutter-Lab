import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xff73a9d4),
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Center(
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
  );
}
