import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const paramTitle = 'My Title';
    const paramName = 'My Name';

    return MaterialApp(
      title: paramTitle,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(paramTitle),
        ),
        body: const MyTextWidget(name: paramName, title: paramTitle),
      ),
    );
  }
}

class MyTextWidget extends StatelessWidget {
  final String title;
  final String name;
  const MyTextWidget({super.key, required this.title, required this.name});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("$title $name"),
    );
  }
}
