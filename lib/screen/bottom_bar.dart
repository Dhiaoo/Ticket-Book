import 'package:air_book/screen/home_screen.dart';
import 'package:air_book/screen/profile_screen.dart';
import 'package:air_book/screen/search_screen.dart';
import 'package:air_book/screen/ticket_screen.dart';
import 'package:flutter/material.dart';

class ButtomBar extends StatefulWidget {
  const ButtomBar({Key? key}) : super(key: key);

  @override
  State<ButtomBar> createState() => _ButtomBarState();
}

class _ButtomBarState extends State<ButtomBar> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetoptions = <Widget>[
    const HomeScreen(),
    const SearchScreen(),
    const TicketScreen(),
    const ProfileScreen(),

  ];

  void onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:null,
      body: Center(
        child: _widgetoptions[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: onItemTapped,
        elevation: 10,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        unselectedItemColor: const Color(0XFF526480),
        selectedItemColor:   Colors.blueGrey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label:"Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label:"Search"),
          BottomNavigationBarItem(icon: Icon(Icons.airplane_ticket_outlined), label:"My Tickets"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label:"My Profile"),
        ],
      ),
    );
  }
}
