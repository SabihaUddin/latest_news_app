import 'package:flutter/material.dart';
import 'package:latest_update/pages/categories_page.dart';
import 'package:latest_update/pages/home_page.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key, required this.index}) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: index,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black.withAlpha(100),
        items: [
          BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.only(left: 50),
                child: IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, HomePage.routeName);
                  },
                  icon: Icon(Icons.home),
                ),
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, CategoriesPage.routeName);
                },
                icon: Icon(Icons.search),
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.only(right: 50),
                child: IconButton(
                  onPressed: () {
                    print('No profile screen create yet');
                  },
                  icon: Icon(Icons.person),
                ),
              ),
              label: 'Home')
        ]);
  }
}
