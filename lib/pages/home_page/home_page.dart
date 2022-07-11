import 'package:flutter/material.dart';
import 'package:integro/responsive.dart';
import 'components/bottom_option.dart';
import 'components/gradiant_button.dart';
import 'components/header.dart';
import 'components/outlined_button.dart';

class HomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Responsive.isLargeScreen(context) ? appHeader() : null,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage("assets/images/keyboard.jpg"),
          fit: BoxFit.cover,
        )),
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(
                  top: size.height * 0.4, right: size.width * .6),
              child: SizedBox(
                height: size.height * 0.4,
                width: MediaQuery.of(context).size.width / 5,
                child: FittedBox(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        overflow: TextOverflow.ellipsis,
                        text: const TextSpan(
                          children: <TextSpan>[
                            TextSpan(
                              text: 'We provide outsourced\n',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                              text: 'IT Services\n',
                              style:
                                  TextStyle(fontSize: 70, color: Colors.white),
                            ),
                            TextSpan(
                              text: "for small and mid-sized business",
                              style:
                                  TextStyle(fontSize: 24, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      Row(
                        children: const [
                          GradiantButton(),
                          SizedBox(
                            width: 40,
                          ),
                          CustomeOutlineButton()
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: 70,
              width: size.width * .5,
              color: Colors.black.withOpacity(.4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  BottomOption(
                      title: "IT Consultancy", optionIcon: Icons.coffee),
                  BottomOption(
                    title: "Cyber Security",
                    optionIcon: Icons.web,
                  ),
                  BottomOption(
                    title: "Developement",
                    optionIcon: Icons.construction,
                  ),
                  BottomOption(
                    title: "UI/UX Design",
                    optionIcon: Icons.design_services,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
