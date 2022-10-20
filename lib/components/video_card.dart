import 'package:flutter/material.dart';

class Video extends StatelessWidget {
  const Video({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(35, 20, 35, 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(bottom: 8),
            child: Text(
              "Categoria",
              style: TextStyle(color: Colors.white),
            ),
          ),
          Container(
            color: Colors.pink,
            width: 320,
            height: 180,
          ),
        ],
      ),
    );
  }
}
