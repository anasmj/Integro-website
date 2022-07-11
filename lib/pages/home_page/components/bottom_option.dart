import 'package:flutter/material.dart';

class BottomOption extends StatelessWidget {
  final Color _contetColor = Colors.white;
  final double _iconSize = 18;
  final double _textSize = 16;
  final IconData optionIcon;
  String title;
  BottomOption({
    required this.title,
    required this.optionIcon,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Flexible(
          child: Row(
            children: [
              Icon(
                optionIcon,
                color: Colors.white,
              ),
              const SizedBox(
                width: 8,
              ),
              Text(
                title,
                style: TextStyle(color: _contetColor, fontSize: _textSize),
              ),
              const SizedBox(
                width: 5.0,
              ),
              Icon(
                Icons.arrow_forward,
                size: _iconSize,
                color: _contetColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
