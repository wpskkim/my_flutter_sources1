import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Bottom Navigation Widget",
      home: MyBottomNavigationWidget(),
      debugShowCheckedModeBanner: false,
    );
  }
}

final List<Widget> _navigationPages = [
  const Center(child: Text('Page: Home')),
  const Center(child: Text('Page: News')),
  const Center(child: Text('Demo: Favorites')),
  const Center(child: Text('Demo: List')),
  const Center(child: Text('MacBook Pro')),
  const Center(child: Text('윈도11 PC')),
];

class MyBottomNavigationWidget extends StatefulWidget {
  const MyBottomNavigationWidget({super.key});

  @override
  State<MyBottomNavigationWidget> createState() => _MyBottomNavigationWidget();
}

class _MyBottomNavigationWidget extends State<MyBottomNavigationWidget> {
  final appTitle = 'Bottom Navigation Widget';
  int _itemSelected = 0;

  void _bottomBarNavigation(int index) {
    setState(() {
      _itemSelected = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appTitle),
      ),
      body: _navigationPages[_itemSelected],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _itemSelected,
        onTap: _bottomBarNavigation,
        type: BottomNavigationBarType.shifting,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey[300],
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'News',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
            backgroundColor: Colors.purple,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'List',
            backgroundColor: Colors.pink,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.laptop_mac),
            label: 'Mac',
            backgroundColor: Colors.orange,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.laptop_windows),
            label: 'Windows',
            backgroundColor: Colors.teal,
          ),
        ],
      ),
    );
  }
}
