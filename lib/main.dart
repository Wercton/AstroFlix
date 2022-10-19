import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AstroFlix',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

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
        ],
      ),
    );
  }
}

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
              fontFamily: 'Bebas Neue', //TODO: importar fonte
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }
}

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
