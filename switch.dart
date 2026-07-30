import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isEnabled = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Switch Example"),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                isEnabled ? "Enable" : "Disable",
                style: const TextStyle(fontSize: 18),
              ),

              Switch(
                value: isEnabled,
                onChanged: (value) {
                  setState(() {
                    isEnabled = value;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
