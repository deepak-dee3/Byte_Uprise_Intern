import 'dart:async';
import 'package:byte_uprise/PAGES/courses.dart';
import 'package:byte_uprise/PAGES/explore.dart';
import 'package:byte_uprise/PAGES/profile.dart';
import 'package:flutter/material.dart';
import 'PAGES/home.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BottomNavScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class BottomNavScreen extends StatefulWidget {
  @override
  _BottomNavScreenState createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int _currentIndex = 0;

  // Pages for each tab
  final List<Widget> _pages = [
    MainPage(), // Home
    Courses(),
   ExplorePage(),
    ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex], 
     

bottomNavigationBar: BottomNavigationBar(
  currentIndex: _currentIndex,
  onTap: (index) {
    setState(() {
      _currentIndex = index;
    });
  },
  items: const <BottomNavigationBarItem>[
    BottomNavigationBarItem(
      icon: Icon(Icons.home, color: Colors.black, size: 28), // Increased icon size
      label: 'Home',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.menu_book_outlined, color: Colors.black, size: 28),
      label: 'Courses',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.search_outlined, color: Colors.black, size: 28),
      label: 'Search',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.account_circle, color: Colors.black, size: 28),
      label: 'Profile',
    ),
  ],
  showSelectedLabels: true,
  showUnselectedLabels: true,
  selectedItemColor: Colors.purple, // Color for the selected item
  unselectedItemColor: Colors.black, // Lighter color for unselected items
  backgroundColor: Colors.white, // Set the background color of the bar
  selectedLabelStyle: TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.bold, // Make selected labels bold
    color: Colors.purple,
  ),
  unselectedLabelStyle: TextStyle(
    fontSize: 12,
    color: Colors.white70, // Light color for unselected labels
  ),
  type: BottomNavigationBarType.fixed, // Use fixed style (no shifting effect)
  elevation: 8.0, // Add a subtle shadow to give depth
),


    );
  }
}
