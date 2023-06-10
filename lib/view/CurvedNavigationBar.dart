import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class CurvedNavigationbar extends StatefulWidget {
  const CurvedNavigationbar({super.key});

  @override
  State<CurvedNavigationbar> createState() => _CurvedNavigationbarState();
}

class _CurvedNavigationbarState extends State<CurvedNavigationbar> {
  late double x = 100;
  late double y;
  int index = 2;
  final items = <Widget>[
    const Icon(
      Icons.home,
      size: 30,
    ),
    const Icon(
      Icons.accessibility,
      size: 30,
    ),
    const Icon(
      Icons.search,
      size: 30,
    ),
    const Icon(
      Icons.settings,
      size: 30,
    ),
    const Icon(
      Icons.person,
      size: 30,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        onTap: (index) {
          print("ok");
        },
        color: Colors.cyan,
        items: items,
        index: index,
        height: 60,
      ),
    ));
  }
}
