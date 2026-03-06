import 'package:amaliyot_1/FavouritesPage.dart';
import 'package:amaliyot_1/HomePage.dart';
import 'package:amaliyot_1/ProfilePage.dart';
import 'package:amaliyot_1/SearchPage.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  PageController pageController  = PageController(initialPage: 0);
  int currentPage = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        onPageChanged: (index) {
          setState(() {
            currentPage = index;
          });

          currentPage = index;
        },
        children: [
          HomePage(),
          SearchPage(),
          FavouritesPage(),
          ProfilePage(),
        ],
      ),

      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          border: Border(top: BorderSide(color: Colors.black12)),
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.red,
          showUnselectedLabels: true,
          selectedLabelStyle: TextStyle(fontSize: 14),
          unselectedLabelStyle: TextStyle(fontSize: 14),
          type: BottomNavigationBarType.fixed,


          currentIndex: currentPage,
          onTap: (index) {
            setState(() {
              currentPage = index;
            });

            pageController.animateToPage(
                index,
                duration: const Duration(milliseconds: 10),
                curve: Curves.ease
            );
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
            BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Favorite"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          ],
        ),
      )
    );
  }
}
