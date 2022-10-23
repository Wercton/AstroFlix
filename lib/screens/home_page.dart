import 'package:flutter/material.dart';
import '../components/personal_appbar.dart';
import '../components/destaque.dart';
import '../components/video_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 26, 26, 26),
      body: ListView(
        children: const [
          PersonalAppBar("ASTROFLIX"),
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
