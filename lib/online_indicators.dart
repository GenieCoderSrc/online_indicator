import 'package:flutter/material.dart';

class OnlineIndicator extends StatelessWidget {
  final bool isOnline;
  final IconData? iconData;
  final Color? bgColor;
  final Color? iconColor;
  final double radius;
  final double borderWide;
  final Color? borderColor;

  const OnlineIndicator({
    super.key,
    this.isOnline = false,
    this.bgColor,
    this.radius = 15.0,
    this.borderWide = 1.0,
    this.borderColor,
    this.iconData,
    this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    // final double radius = radius;
    final double position = (radius / 100) * 15.0;
    return isOnline
        ? Positioned(
          bottom: position,
          right: position,
          child: Container(
            height: radius,
            width: radius,
            padding: const EdgeInsets.all(0.4),
            decoration: BoxDecoration(
              color: bgColor ?? Theme.of(context).primaryColor,
              border: Border.all(
                color: borderColor ?? Colors.transparent,
                width: borderWide,
              ),
              borderRadius: BorderRadius.circular(15.0),
            ),
          ),
        )
        : Container();
  }
}
