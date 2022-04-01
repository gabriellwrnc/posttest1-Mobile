import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "My App",
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQueryWidth = MediaQuery.of(context).size.width;
    var mediaQueryHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text('Post Test 1 - Widget'),
        backgroundColor: Colors.redAccent,
        shadowColor: Colors.black,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: mediaQueryHeight / 4),
              width: mediaQueryWidth / 1.5,
              height: mediaQueryHeight / 4,
              decoration: BoxDecoration(color: Color.fromARGB(255, 217, 0, 0)),
              child: Image(image: AssetImage('assets/pic1.JPG')),
            ),
            Container(
              width: mediaQueryWidth / 1.5,
              height: mediaQueryHeight / 30,
              decoration: BoxDecoration(color: Color.fromARGB(255, 217, 0, 0)),
              child: const Text(
                '1915026020 - Gabriel D Lawrence',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
