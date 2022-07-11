import 'package:flutter/material.dart';
import 'package:integro/config.dart';

class DropDown extends StatefulWidget {
  late String dropdownName;
  late List<String> dropdownList;

  State<DropDown> createState() => DropDownState();

  DropDown({required this.dropdownName, required this.dropdownList});
}

class DropDownState extends State<DropDown> {
  Widget build(BuildContext context) {
    return DropdownButton(
      hint: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Text(
          widget.dropdownName,
          style: TextStyle(
            color: Colors.white,
            fontSize: headerTextStize,
          ),
        ),
      ),
      onChanged: (newValue) => setState(() => {}),
      items: widget.dropdownList.map(buildMenu).toList(),
      iconEnabledColor: Colors.white,
      elevation: 0,
      underline: const SizedBox(),
      //dropdownColor: Colors.brown.shade50,
    );
  }

  DropdownMenuItem<String> buildMenu(String item) => DropdownMenuItem(
        value: item,
        child: Text(
          item,
          style: TextStyle(
            fontSize: headerTextStize,
          ),
        ),
      );
}
