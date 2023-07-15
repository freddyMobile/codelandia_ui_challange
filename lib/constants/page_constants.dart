import 'package:codelandia_ui_challange/screens/profile_screen.dart';
import 'package:codelandia_ui_challange/screens/search_screen.dart';
import 'package:flutter/material.dart';

List<Widget> screens = [
  Container(
    height: 100,
    width: 100,
    color: Colors.red,
  ),
  const SearchScreen(),
  Container(
    height: 100,
    width: 100,
    color: Colors.amber,
  ),
  Container(
    height: 100,
    width: 100,
    color: Colors.indigo,
  ),
  const ProfileScreen(),
];
