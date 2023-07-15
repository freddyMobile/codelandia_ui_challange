import 'package:codelandia_ui_challange/constants/page_constants.dart';
import 'package:flutter/material.dart';

class CoreScreen extends StatefulWidget {
  const CoreScreen({super.key});

  @override
  State<CoreScreen> createState() => _CoreScreenState();
}

class _CoreScreenState extends State<CoreScreen> {
  int curIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: IndexedStack(
        index: curIndex,
        children: screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        items: const [
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.home,
              color: Colors.black,
            ),
            icon: Icon(
              Icons.home_outlined,
              color: Colors.grey,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.search,
                color: Colors.black,
              ),
              icon: Icon(
                Icons.search,
                color: Colors.grey,
              ),
              label: ''),
          BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.share,
                color: Colors.black,
              ),
              icon: Icon(
                Icons.share_outlined,
                color: Colors.grey,
              ),
              label: ''),
          BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.favorite,
                color: Colors.black,
              ),
              icon: Icon(
                Icons.favorite_border,
                color: Colors.grey,
              ),
              label: ''),
          BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.person,
                color: Colors.black,
              ),
              icon: Icon(
                Icons.person_outline,
                color: Colors.grey,
              ),
              label: ''),
        ],
        currentIndex: curIndex,
        onTap: (value) {
          setState(() {
            curIndex = value;
          });
        },
      ),
    );
  }
}
