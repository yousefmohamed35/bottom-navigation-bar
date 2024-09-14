import 'package:flutter/material.dart';
import 'package:sessinapp/body_of_navigation.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;
  final pages = [
    const BodyOfNavigation(
        iconData1: Icons.home_outlined,
        titleText: 'Welcome Home!',
        iconData2: Icons.explore,
        text: ' Exploring'),
    const BodyOfNavigation(
        iconData1: Icons.search,
        titleText: 'Find What You Need',
        iconData2: Icons.search,
        text: ' Start Searching'),
    const BodyOfNavigation(
        iconData1: Icons.person_outlined,
        titleText: 'Your Profile',
        iconData2: Icons.edit,
        text: ' Edit Profile'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[index],
      appBar: AppBar(
        backgroundColor: Colors.purple[300],
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.star,
              color: Colors.white,
            ),
            Text(
              ' Creative App',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey[100],
        currentIndex: index,
        onTap: (value) => setState(() {
          index = value;
        }),
        iconSize: 24,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
