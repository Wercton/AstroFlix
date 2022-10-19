import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   toolbarHeight: 86,
      //   title: const Text("AstroFlix"),
      //   centerTitle: true,
      // ),
      body: ListView(
        children: const [
          PersonalAppBar("AstroFlix"),
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
          padding: const EdgeInsets.only(bottom: 16),
          child: Text(
            title,
            style: const TextStyle(
              color: Color.fromARGB(255, 36, 120, 223),
              fontSize: 26,
              fontFamily: 'Bebas Neue',
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
    return Container(
      height: 138,
      color: Colors.black12,
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
            child: Text("Categoria"),
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
