import 'package:flutter/material.dart';

class ReuseCard extends StatelessWidget {
  final Color colour;
  final Widget childCard;
  const ReuseCard({Key? key, required this.colour, required this.childCard})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: childCard,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
