// Day.

import 'package:flutter/material.dart';

class Day extends StatelessWidget {
  const Day({
    Key? key,
    required this.dayNumber,
    required this.shortName,
    required this.onTap,
    this.isSelected = false,
    this.dayColor,
    this.activeDayColor,
    this.activeDayBackgroundColor,
    this.available = true,
    this.dayNameColor,
    this.shrink = false,
  }) : super(key: key);
  final int dayNumber;
  final String shortName;
  final bool isSelected;
  final Function onTap;
  final Color? dayColor;
  final Color? activeDayColor;
  final Color? activeDayBackgroundColor;
  final bool available;
  final Color? dayNameColor;
  final bool shrink;

  GestureDetector _buildDay(BuildContext context) {
    final textStyle = TextStyle(
      color: available
          ? dayColor ?? Theme.of(context).colorScheme.secondary
          : dayColor?.withOpacity(0.5) ??
              Theme.of(context).colorScheme.secondary.withOpacity(0.5),
      fontSize: shrink ? 22 : 24,
    );
    final selectedStyle = TextStyle(
      color: activeDayColor ?? Colors.white,
      fontSize: shrink ? 14 : 28,
      fontWeight: FontWeight.bold,
      height: 0.9,
    );

    return GestureDetector(
      onTap: available ? onTap as void Function()? : null,
      child: Container(
        decoration: isSelected
            ? BoxDecoration(
                color:
                    activeDayBackgroundColor ?? Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(17.88),
              )
            : const BoxDecoration(color: Colors.transparent),
        height: shrink ? 40 : 70,
        width: shrink ? 30 : 55,
        child: Column(
          children: <Widget>[
            if (isSelected) ...[
              SizedBox(height: shrink ? 6 : 7),
              SizedBox(height: shrink ? 9 : 10),
            ] else
              SizedBox(height: shrink ? 10 : 12),
            Text(
              dayNumber.toString(),
              style: isSelected ? selectedStyle : textStyle,
            ),
            if (isSelected)
              Text(
                shortName,
                style: TextStyle(
                  color: dayNameColor ?? activeDayColor ?? Colors.white,
                  fontSize: shrink ? 9 : 14,
                ),
              ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildDay(context);
  }
}
