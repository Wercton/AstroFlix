import 'package:flutter/material.dart';

class PersonalAppBar extends StatelessWidget {
  final String title;
  const PersonalAppBar(this.title, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        Container(
          color: const Color.fromARGB(255, 26, 26, 26),
          height: 86,
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: Text(
            title,
            style: const TextStyle(
              color: Color.fromARGB(255, 36, 120, 223),
              fontSize: 32,
              fontFamily: 'BebasNeue',
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }
}
