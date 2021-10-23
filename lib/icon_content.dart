import 'package:flutter/material.dart';

const genderTextStyle = TextStyle(
  fontSize: 18.0,
  color: Color(0xFF8D8E98),
);

class IconContent extends StatelessWidget {
  const IconContent(this.icon, this.gender);
  final IconData icon;
  final String gender;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
        ),
        const SizedBox(
          height: 15.0,
        ),
        Text(
          gender,
          style: genderTextStyle,
        ),
      ],
    );
  }
}
