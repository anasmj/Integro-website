import 'package:flutter/material.dart';

class GradiantButton extends StatelessWidget {
  const GradiantButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: const EdgeInsets.only(top: 20)
      //padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.0),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(2)),
        gradient: LinearGradient(
          colors: <Color>[
            Color.fromARGB(255, 6, 79, 146),
            Color.fromARGB(255, 60, 177, 255)
          ],
        ),
      ),
      child: OutlinedButton(
        onPressed: () {},
        style: OutlinedButton.styleFrom(
          primary: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 12),
          child: Row(
            children: const [
              Text('Learn More'),
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
      ),
    );
  }
}
