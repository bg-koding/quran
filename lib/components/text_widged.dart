// Suggested code may be subject to a license. Learn more: ~LicenseLog:2442297582.
import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final String text;
  final double size;
  final FontStyle fontStyle;
  final Color color;
  
  const TextWidget({
    super.key,
    required this.text,
    required this.size,
    required this.fontStyle,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size,
        fontStyle: fontStyle,
        color: color,
      ),
    );
  }
}
