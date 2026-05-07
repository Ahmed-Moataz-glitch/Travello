import 'package:flutter/material.dart';
import 'package:travello/views/pages/account_page.dart';
import 'package:travello/views/pages/cart_page.dart';
import 'package:travello/views/pages/favorite_page.dart';
import 'package:travello/views/pages/home_page.dart';

class AppSectionPage extends StatefulWidget {
  const AppSectionPage({super.key});

  @override
  State<AppSectionPage> createState() => _AppSectionPageState();
}

class _AppSectionPageState extends State<AppSectionPage> {
  int _selectedIndex = 0;
  final List<Widget> pages = const [
    HomePage(),
    CartPage(),
    FavoritePage(),
    AccountPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xffFF3951),
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        selectedItemColor: Color(0xff000000),
        unselectedItemColor: Color(0xffffffff),
        showUnselectedLabels: true,
        unselectedLabelStyle: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Account',
          ),
        ],
      ),
      body: pages[_selectedIndex],
    );
  }
}