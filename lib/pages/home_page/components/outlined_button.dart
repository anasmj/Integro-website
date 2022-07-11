import 'package:flutter/material.dart';

class CustomeOutlineButton extends StatelessWidget {
  const CustomeOutlineButton({super.key});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      style: OutlinedButton.styleFrom(
        primary: Colors.white,
        side: BorderSide(color: Colors.white, strokeAlign: StrokeAlign.inside),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 12),
        child: Row(
          children: const [
            Text('Get in touch'),
            SizedBox(
              width: 4,
            ),
            Icon(
              Icons.arrow_forward,
              color: Colors.white,
              size: 18,
            ),
          ],
        ),
      ),
    );
  }
}
