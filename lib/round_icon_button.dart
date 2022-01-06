import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final IconData? iconData;
  final Function()? onTap;
  const RoundIconButton({Key? key, required this.onTap, required this.iconData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      constraints: const BoxConstraints.tightFor(
        height: 56.0,
        width: 56.0,
      ),
      elevation: 6.0,
      onPressed: onTap,
      child: Icon(iconData),
      shape: const CircleBorder(),
      fillColor: Colors.grey,
    );
  }
}
