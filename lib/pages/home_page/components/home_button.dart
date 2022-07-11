import 'package:flutter/material.dart';
import 'package:integro/pages/home_page/components/shared_components.dart';

class HomeButton extends StatelessWidget {
  final String buttonName;
  const HomeButton({required this.buttonName, super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 2.0, vertical: 18.0),
        child: Text(
          buttonName,
          style: customeStyle,
        ),
      ),
    );
  }
}
