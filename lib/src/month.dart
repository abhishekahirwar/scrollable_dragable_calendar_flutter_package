// Month.
import 'package:flutter/material.dart';

class Month extends StatelessWidget {
  const Month({
    Key? key,
    required this.name,
    required this.onTap,
    this.isSelected = false,
    this.color,
    this.activeColor,
    this.shrink = false,
  }) : super(key: key);
  final String name;
  final Function onTap;
  final bool isSelected;
  final Color? color;
  final Color? activeColor;
  final bool shrink;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap as void Function()?,
      child: Text(
        name,
        style: TextStyle(
          fontSize: shrink ? 12 : 16,
          color: isSelected
              ? activeColor ?? const Color(0xFF002265)
              : color ?? Colors.black,
          fontWeight: isSelected ? FontWeight.bold : FontWeight.w500,
        ),
      ),
    );
  }
}
