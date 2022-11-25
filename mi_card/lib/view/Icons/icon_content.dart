import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  final IconData icon;
  final Color color;

  const IconContent({super.key, required this.icon, required this.color});

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      color: color,
    );
  }
}
