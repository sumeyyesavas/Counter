import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  final String title = "Welcome second page";

  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  int sayac = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 20,
        title: const Text(
          "My App",
          style: TextStyle(fontFamily: "Silkscreen", fontSize: 30),
        ),
        backgroundColor: Colors.orange,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Welcome second page",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black87,
                  fontFamily: "Silkscreen",
                  fontSize: 30),
            ),
            Text(
              sayac.toString(),
              style: const TextStyle(fontFamily: "Silkscreen", fontSize: 30),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  sayac = sayac + 1;
                });
                print(sayac);
              },
              child: const Text(
                "Click",
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: "Silkscreen",
                    fontSize: 30),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    sayac = 0;
                  });
                },
                child: const Text(
                  "Reset",
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: "Silkscreen",
                      fontSize: 30),
                ))
          ],
        ),
      ),
    );
  }
}
