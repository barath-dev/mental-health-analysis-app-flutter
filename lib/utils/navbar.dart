// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mental_health/screens/journal/create_journal_screen.dart';
import 'package:mental_health/screens/journal/view_journal_list_screen.dart';
import 'package:mental_health/screens/motivational/blog_suggetion_screen.dart';
import 'package:mental_health/screens/profile_screen.dart';
import 'package:mental_health/screens/remainder/remainder_screen.dart';
import 'package:mental_health/services/blog_services.dart';

List<Widget> pages = [
  CreateJournal(),
  ViewJournalListScreen(),
  RemainderScreen(),
  BlogSuggestion(
    articles: ApiService().getArticle(),
  ),
  ProfileScreen()
];
late List<List<String>> a;

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _pageIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    _pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void navigatonTapped(int page) async {
    if (page == 3) {
      _pageController.animateToPage(page,
          duration: const Duration(milliseconds: 300), curve: Curves.easeIn);
    } else {
      _pageController.animateToPage(page,
          duration: const Duration(milliseconds: 300), curve: Curves.easeIn);
    }
  }

  void onpageChanged(int index) {
    setState(() {
      _pageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: pages,
        onPageChanged: onpageChanged,
        controller: _pageController,
      ),
      bottomNavigationBar: CupertinoTabBar(
        currentIndex: _pageIndex,
        backgroundColor: Colors.black,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              backgroundColor:
                  _pageIndex == 0 ? Colors.blue : Colors.grey[500]),
          BottomNavigationBarItem(
              icon: Icon(Icons.note),
              backgroundColor: _pageIndex == 1
                  ? const Color.fromARGB(255, 139, 145, 149)
                  : Colors.grey[500]),
          BottomNavigationBarItem(
              icon: Icon(Icons.alarm),
              backgroundColor:
                  _pageIndex == 2 ? Colors.blue : Colors.grey[500]),
          BottomNavigationBarItem(
              icon: Icon(Icons.article),
              backgroundColor:
                  _pageIndex == 3 ? Colors.blue : Colors.grey[500]),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              backgroundColor:
                  _pageIndex == 4 ? Colors.blue : Colors.grey[500]),
        ],
        onTap: navigatonTapped,
      ),
    );
  }
}
