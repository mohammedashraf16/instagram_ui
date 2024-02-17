import 'package:app_login/models/insta_home_screen.dart';
import 'package:flutter/material.dart';

class InstaMainScreen extends StatefulWidget {
  const InstaMainScreen({super.key});

  @override
  State<InstaMainScreen> createState() => _InstaMainScreenState();
}

class _InstaMainScreenState extends State<InstaMainScreen> {
  int currentIndex= 0;
  final titles = [
    "Home",
    "Search",
    "Add Post",
    "Reals",
    "Profile",
  ];
  final screens = [
    const InstaHomeScreen(),
    const SizedBox(),
    const SizedBox(),
    const SizedBox(),
    const SizedBox(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(titles[currentIndex]),
      // ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        currentIndex: currentIndex ,
        onTap: (value) {
          currentIndex=value;
          setState(() {});
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_rounded,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add_box_outlined,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.video_collection_outlined,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_rounded,
            ),
            label: "",
          ),
        ],
      ),
      body: screens[currentIndex],
    );
  }
}
