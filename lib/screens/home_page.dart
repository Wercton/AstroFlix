import 'package:flutter/material.dart';
import '../components/personal_appbar.dart';
import '../components/destaque.dart';
import '../components/video_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 26, 26, 26),
        toolbarHeight: 86,
        flexibleSpace: Container(
          height: 90,
          alignment: Alignment.bottomCenter,
          child: const Text(
            "ASTROFLIX",
            style: TextStyle(
              color: Color.fromARGB(255, 36, 120, 223),
              fontSize: 32,
              fontFamily: 'BebasNeue',
            ),
          ),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 26, 26, 26),
      body: ListView(
        children: const [
          Destaque(),
          Video(),
          Video(),
          Video(),
          Video(),
          SizedBox(height: 80)
        ],
      ),
      floatingActionButton:
          FloatingActionButton(onPressed: () {}, child: const Icon(Icons.add)),
    );
  }
}
