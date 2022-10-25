import 'package:flutter/material.dart';

class FormPage extends StatelessWidget {
  const FormPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 26, 26, 26),
        toolbarHeight: 86,
        flexibleSpace: Container(
          height: 90,
          alignment: Alignment.bottomLeft,
          child: const Padding(
            padding: EdgeInsets.fromLTRB(18.0, 0, 0, 0),
            child: Text(
              "Cadastre um vídeo",
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
              ),
            ),
          ),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 26, 26, 26),
      body: const VideoForm(),
    );
  }
}

class VideoForm extends StatelessWidget {
  const VideoForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(36.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 35.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(bottom: 8.0),
                    child: Text(
                      "URL:",
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  ),
                  TextFormField(
                    style: const TextStyle(color: Colors.white),
                    decoration: const InputDecoration(
                      hintText: 'Ex: N3h5A0oAzsk',
                      hintStyle:
                          TextStyle(color: Color.fromARGB(255, 176, 176, 176)),
                      fillColor: Color.fromARGB(255, 39, 95, 163),
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 35.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(bottom: 8.0),
                    child: Text(
                      "Categoria:",
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  ),
                  TextFormField(
                    style: const TextStyle(color: Colors.white),
                    decoration: const InputDecoration(
                      hintText: 'Mobile, Front-end...',
                      hintStyle: TextStyle(
                        color: Color.fromARGB(255, 176, 176, 176),
                      ),
                      fillColor: Color.fromARGB(255, 39, 95, 163),
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 35.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(bottom: 13.0),
                    child: Text(
                      "Preview",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                      ),
                    ),
                  ),
                  Container(
                    height: 180,
                    width: 318,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.grey,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.network(
                        "http://i3.ytimg.com/vi/bCYGuSfwbKU/hqdefault.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 48,
              width: 318,
              child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    "Cadastrar",
                    style: TextStyle(fontSize: 18),
                  ),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          const Color.fromARGB(255, 36, 120, 223)))),
            )
          ],
        ),
      ),
    );
  }
}
