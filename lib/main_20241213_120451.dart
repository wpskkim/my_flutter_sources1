// Filename: main.dart
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const title = 'MyAwesomeApp';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(title),
        ),
        body: const MyListView(),
      ),
    );
  }
}

class ListViewData {
  const ListViewData();

  final List<String> monthItems = const [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December',
  ];
}

class MyListView extends StatelessWidget {
  const MyListView({super.key});

  @override
  Widget build(BuildContext context) {
    const ListViewData items = ListViewData();

    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.monthItems.length,
        itemBuilder: (context, index) {
          return Row(
            key: ValueKey(index),
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  ScaffoldMessenger.of(context).hideCurrentSnackBar();
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('니가 선택한 것은 ${items.monthItems[index]}'),
                      duration: const Duration(seconds: 5),
                    ),
                  );
                },
                child: Container(
                  key: ValueKey('container_$index'),
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    items.monthItems[index],
                    style: const TextStyle(
                      fontSize: 48.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 20.0),
            ],
          );
        });
  }
}
