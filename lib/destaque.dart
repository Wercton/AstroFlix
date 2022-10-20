import 'package:flutter/material.dart';

class Destaque extends StatelessWidget {
  const Destaque({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        Container(
          height: 138,
          color: Colors.grey,
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 21.15),
          child: Container(
            height: 42.31,
            width: 128,
            child: ElevatedButton(
                onPressed: () {},
                child: const Text(
                  "Assista agora",
                  style: TextStyle(
                    //TODO: importar fonte Roboto
                    fontSize: 17, // 18
                    fontWeight: FontWeight.w400,
                    //height: 21.09,
                  ),
                )),
          ),
        )
      ],
    );
  }
}
