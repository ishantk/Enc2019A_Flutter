import 'package:flutter/material.dart';
import 'listtilepage.dart';

class BottomNavPage extends StatefulWidget{

  @override
  State<StatefulWidget> createState() => new BottomNavPageState();

}

class BottomNavPageState extends State<BottomNavPage>{


  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Welcome Home',
      style: optionStyle,
    ),
    Text(
      'Welcome Office',
      style: optionStyle,
    ),
    Text(
      'Welcome College',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Agrizon BottomNavigationBar'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            title: Text('Office'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            title: Text('College'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }

}