import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const title = 'Expanded Widget';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(title),
        ),
        body: const MyExpandedWidget(),
      ),
    );
  }
}

class MyExpandedWidget extends StatelessWidget {
  const MyExpandedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Expanded(
          child: Placeholder(
              fallbackHeight: 400, strokeWidth: 10, color: Colors.red),
        ),
        Expanded(
          child: Placeholder(
              fallbackHeight: 400, strokeWidth: 10, color: Colors.white),
        ),
        Expanded(
          child: Placeholder(
              fallbackHeight: 400,
              strokeWidth: 10,
              color: Color.fromARGB(255, 0, 66, 120)),
        ),
      ],
    );
  }
}
