import 'package:flutter/material.dart';

class backDecoration extends StatelessWidget {
  const backDecoration({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 70,
      decoration: BoxDecoration(
        gradient:
            LinearGradient(
              colors: [Colors.red, Colors.orange],
              ),
        shape: BoxShape.circle,
        color: Colors.amber,
      ),
    );
  }
}