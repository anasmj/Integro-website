import 'package:flutter/material.dart';

class SideNavigation extends StatefulWidget {
  const SideNavigation({super.key});

  @override
  State<SideNavigation> createState() => _SideNavigationState();
}

class _SideNavigationState extends State<SideNavigation> {
  @override
  Widget build(BuildContext context) {
    return NavigationRail(
      selectedIndex: 1,
      destinations: <NavigationRailDestination>[
        NavigationRailDestination(
            icon: Icon(Icons.card_travel), label: Text('1')),
        NavigationRailDestination(
            icon: Icon(Icons.card_travel), label: Text('1'))
      ],
    );
  }
}
