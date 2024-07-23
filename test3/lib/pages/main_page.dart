import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:test3/pages/second_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  String title = "#My App";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 100,
              backgroundColor: Colors.white70,
              backgroundImage: AssetImage("assets/images/ikon.jpg"),
            ),
            Text(
              "Hello, welcome to counter!",
              style: TextStyle( fontFamily:"Silkscreen" ,fontSize: 30),
            ),
          ],

        ),
      ),
      appBar: AppBar(
        elevation: 20,
        title: Text(title, style: const TextStyle(fontFamily: "Silkscreen", fontSize: 30),),
        backgroundColor: Colors.orange,
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.add_box),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SecondPage()),
              );
            },
          )
        ],
      ),
    );
  }
}
