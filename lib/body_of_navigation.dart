import 'package:flutter/material.dart';

class BodyOfNavigation extends StatelessWidget {
  const BodyOfNavigation(
      {super.key,
      required this.iconData1,
      required this.titleText,
      required this.iconData2,
      required this.text});
  final IconData iconData1;
  final String titleText;
  final IconData iconData2;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            iconData1,
            size: 70,
            color: Colors.purple[300],
          ),
          SizedBox(height: 16),
          Text(
            titleText,
            style: TextStyle(
                fontSize: 32,
                color: Colors.purple[300],
                fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 16),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.purple[300],
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  iconData2,
                  color: Colors.white,
                  size: 32,
                ),
                Text(
                  text,
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
