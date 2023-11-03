import 'package:flutter/material.dart';
import 'package:salon/view/features/calendar/calendar_page.dart';
import 'package:salon/view/features/home/home_page.dart';
import 'package:salon/view/features/salon/salon_page.dart';
import 'package:salon/view/features/shopping/shopping_page.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  AppState createState() => AppState();
}

class AppState extends State<App> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    SalonFormPage(),
    ShoppingPage(),
    CalendarPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'ホーム',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.woman),
            label: 'サロン',
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.store),
          //   label: 'ショップ',
          // ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: 'カレンダー',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
