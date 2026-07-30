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
  double iconSize = 50;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Icon Size Example"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.school,
                color: Colors.red,
                size: iconSize,
              ),

              const SizedBox(height: 20),

              Text(
                "Size: ${iconSize.toInt()}",
                style: const TextStyle(fontSize: 20),
              ),

              const SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        iconSize += 10;
                      });
                    },
                    child: const Text("Increase"),
                  ),
                  const SizedBox(width: 20),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if (iconSize > 10) {
                          iconSize -= 10;
                        }
                      });
                    },
                    child: const Text("Decrease"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
