import 'package:flutter/material.dart';
import 'package:mad/screens/home_screen.dart';
import 'package:mad/utils/app_color.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  List<Widget> screenList = [
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    final navBarItems = [
      BottomNavigationBarItem(
        icon: Icon(
          Icons.home,
        ),
        label: 'Home',
        backgroundColor: AppColor.appBackgroundColor,
      ),
      BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Favorite'),
      BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: 'Cart'),
      BottomNavigationBarItem(
          icon: Icon(Icons.account_circle), label: 'Account'),
    ];

    final navBar = BottomNavigationBar(
      backgroundColor: AppColor.appBackgroundColor,
      items: navBarItems,
      currentIndex: _currentIndex,
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });
      },
      fixedColor: AppColor.appTextColor,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      unselectedItemColor: Colors.blueGrey,
    );

    final screen = Scaffold(
      body: screenList.elementAt(_currentIndex),
      bottomNavigationBar: navBar,
    );

    return screen;
  }
}
