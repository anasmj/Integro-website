import 'package:flutter/material.dart';

class MobileViewHomePage extends StatefulWidget {
  const MobileViewHomePage({super.key});

  @override
  State<MobileViewHomePage> createState() => _MobileViewHomePageState();
}

class _MobileViewHomePageState extends State<MobileViewHomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Mobile View'),
    );
  }
}
