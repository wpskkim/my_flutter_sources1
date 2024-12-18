import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const title = 'MediaQuery demo';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(title),
        ),
        body: const MyMediaQueryWidget(),
      ),
    );
  }
}

class MyMediaQueryWidget extends StatelessWidget {
  const MyMediaQueryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    if (screenSize.width > 600) {
      // Two Column
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'You can Fit Two columns here! 화면이 너무 넓은 듯!!!',
            style: TextStyle(fontSize: 30, color: Colors.grey),
          ),
          const SizedBox(height: 10.0),
          Text(
            'Screen Width: ${MediaQuery.of(context).size.width}',
            style: const TextStyle(fontSize: 20, color: Colors.grey),
          ),
          Text(
            'Screen Height: ${MediaQuery.of(context).size.height}',
            style: const TextStyle(fontSize: 20, color: Colors.grey),
          ),
          Text(
            'Aspect Ratio: ${MediaQuery.of(context).size.aspectRatio}',
            style: const TextStyle(fontSize: 20, color: Colors.grey),
          ),
          Text(
            'Orientation: ${MediaQuery.of(context).orientation}',
            style: const TextStyle(fontSize: 20, color: Colors.grey),
          ),
        ],
      );
    } else {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'You can Fit One column here!',
            style: TextStyle(fontSize: 30, color: Colors.grey),
          ),
          const SizedBox(height: 10.0),
          Text(
            'Screen Width: ${MediaQuery.of(context).size.width}',
            style: const TextStyle(fontSize: 20, color: Colors.grey),
          ),
          Text(
            'Screen Height: ${MediaQuery.of(context).size.height}',
            style: const TextStyle(fontSize: 20, color: Colors.grey),
          ),
          Text(
            'Aspect Ratio: ${MediaQuery.of(context).size.aspectRatio}',
            style: const TextStyle(fontSize: 20, color: Colors.grey),
          ),
          Text(
            'Orientation: ${MediaQuery.of(context).orientation}',
            style: const TextStyle(fontSize: 20, color: Colors.grey),
          ),
        ],
      );
    }
  }
}
