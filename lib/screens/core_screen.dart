import 'package:codelandia_ui_challange/constants/color_constants.dart';
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
        items: [
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.home,
              color: AppColors.blackColor,
            ),
            icon: Icon(
              Icons.home_outlined,
              color: AppColors.greyColor,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
              activeIcon: Icon(Icons.search, color: AppColors.blackColor),
              icon: Icon(
                Icons.search,
                color: AppColors.greyColor,
              ),
              label: ''),
          BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.share,
                color: AppColors.blackColor,
              ),
              icon: Icon(
                Icons.share_outlined,
                color: AppColors.greyColor,
              ),
              label: ''),
          BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.favorite,
                color: AppColors.blackColor,
              ),
              icon: Icon(
                Icons.favorite_border,
                color: AppColors.greyColor,
              ),
              label: ''),
          BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.person,
                color: AppColors.blackColor,
              ),
              icon: Icon(
                Icons.person_outline,
                color: AppColors.greyColor,
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
