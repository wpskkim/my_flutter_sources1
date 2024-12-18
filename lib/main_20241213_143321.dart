import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter and Dart Cookbook Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        tabBarTheme: const TabBarTheme(
          labelColor: Color.fromARGB(255, 74, 34, 133),
          labelStyle: TextStyle(color: Color.fromARGB(255, 24, 112, 53)),
// color for text
        ),
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter and Dart Cookbook'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('탭바 테스트'),
            bottom: const TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.home,
                      color: Color.fromARGB(255, 164, 228, 132)),
                  child: Text('Home',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                Tab(
                  icon: Icon(Icons.account_balance,
                      color: Color.fromARGB(255, 54, 173, 76)),
                  child: Text('Account',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                Tab(
                  icon: Icon(Icons.calculate,
                      color: Color.fromARGB(255, 49, 165, 88)),
                  child: Text('Payments',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                Tab(
                  icon: Icon(Icons.credit_score,
                      color: Color.fromARGB(255, 49, 173, 107)),
                  child: Text('Card',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              SizedBox(
                child: Center(
                  child: Text('Home Page Tab 1'),
                ),
              ),
              SizedBox(
                child: Center(
                  child: Text('Account Page Tab 2'),
                ),
              ),
              SizedBox(
                child: Center(
                  child: Text('Payments Page Tab 3'),
                ),
              ),
              SizedBox(
                child: Center(
                  child: Text('Card Page Tab 4'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
