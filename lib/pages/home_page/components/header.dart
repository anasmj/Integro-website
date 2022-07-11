import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:integro/pages/home_page/components/shared_components.dart';
import 'drop_down.dart';
import 'dropdown_lists.dart';
import 'home_button.dart';

Widget appHeader() => Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        logoRow(),
        middleRow(spaceFactor: 0.02),
        rightRow(),
      ],
    );

Widget logoRow() => Row(
      children: [
        SvgPicture.asset(
          "assets/icons/search.svg",
          color: Colors.white,
          height: 20,
          width: 50,
        ),
        const SizedBox(
          width: 8,
        ),
        Text(
          "INTEGRO",
          style: customeStyle,
        ),
      ],
    );

Widget middleRow({required double spaceFactor}) => Row(children: [
      const HomeButton(buttonName: "Home"),
      // Manages responsive spacing
      Builder(
          builder: (context) => SizedBox(
                width: MediaQuery.of(context).size.width * spaceFactor,
              )),

      DropDown(
        dropdownName: "Companis",
        dropdownList: companies,
      ),

      Builder(
          builder: (context) => SizedBox(
                width: MediaQuery.of(context).size.width * spaceFactor,
              )),

      DropDown(dropdownName: "Blogs", dropdownList: blogs),

      Builder(
          builder: (context) => SizedBox(
                width: MediaQuery.of(context).size.width * spaceFactor,
              )),

      DropDown(
        dropdownName: "Portfolio",
        dropdownList: portfolios,
      ),

      Builder(
          builder: (context) => SizedBox(
                width: MediaQuery.of(context).size.width * spaceFactor,
              )),

      DropDown(
        dropdownName: "Shop",
        dropdownList: shops,
      ),

      Builder(
          builder: (context) => SizedBox(
                width: MediaQuery.of(context).size.width * spaceFactor,
              )),

      const HomeButton(buttonName: "Contacts"),

      // DropDown(),
    ]);
Widget rightRow() => Row(children: [
      SvgPicture.asset(
        "assets/icons/cart.svg",
        color: Colors.white,
        height: 30,
        width: 30,
      ),
      const SizedBox(width: 20),
      SvgPicture.asset(
        "assets/icons/search.svg",
        color: Colors.white,
        height: 30,
        width: 30,
      ),
      const SizedBox(
        width: 20,
      ),
      MaterialButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
          side: const BorderSide(color: Colors.white),
        ),
        onPressed: () {},
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: Text(
            "Free Community",
            style: customeStyle,
          ),
        ),
      )
    ]);
