import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const title = 'RichText Demo';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(title),
        ),
        body: const MyRichText(),
      ),
    );
  }
}

double screenHeight = 0.0;

class MyRichText extends StatelessWidget {
  const MyRichText({super.key});

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height / 3;

    return RichText(
      text: const TextSpan(
        children: [
          TextSpan(
            text: 'Hello',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          TextSpan(
            text: 'Luxembourg, Seoul, 대한민국',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 32, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
