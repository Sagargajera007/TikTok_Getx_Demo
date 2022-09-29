import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tiktok_getx_demo/constants.dart';
import 'package:tiktok_getx_demo/view/widgets/customaddicon.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int pageIdx = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:
          BottomNavigationBar(type: BottomNavigationBarType.fixed,
              backgroundColor: backgroungColor,
              currentIndex: pageIdx,
            onTap: (index) {
              setState(() {
                pageIdx = index;
              });
            },
            items: [
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 25,
            ),
            label: "Home"),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              size: 25,
            ),
            label: "Search"),
        BottomNavigationBarItem(icon: custumAddIcon(), label: ""),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.message,
              size: 25,
            ),
            label: "Messages"),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              size: 25,
            ),
            label: "Profile"),
      ]),
      body: Center(child: pageindex[pageIdx]),
    );
  }
}