import 'package:flutter/material.dart';

const testStyleContent = TextStyle(
  fontSize: 15.0,
  fontWeight: FontWeight.bold,
  color: Colors.grey,
);

class IconContent extends StatelessWidget {
  final String gender;
  final IconData genderIcon;
  const IconContent({
    Key? key,
    required this.gender,
    required this.genderIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          genderIcon,
          size: 80.0,
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          gender,
          style: testStyleContent,
        ),
      ],
    );
  }
}
