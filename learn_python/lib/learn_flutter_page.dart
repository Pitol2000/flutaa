import 'dart:ui';

import 'package:flutter/material.dart';

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({Key? key}) : super(key: key);

  @override
  State<LearnFlutterPage> createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<LearnFlutterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Learn Python'),
          automaticallyImplyLeading: false,
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back_ios),
          ),
        ),
        body: Column(
          children: [
            const SizedBox(height: 50),
            Image.asset('images/python.png'),
            const SizedBox(height: 30),
            // const Divider(color: Colors.black),
            Container(
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(6),
                color: Colors.deepPurple,
                width: double.infinity,
                child: const Center(
                  child: Text(
                    "Here you'll learn the basics of Python",
                    style: TextStyle(color: Colors.white),
                  ),
                )),
            ElevatedButton(
                onPressed: () {
                  debugPrint('Elevated Button Pressed!');
                },
                child: const Text('Elevated Button')),
            OutlinedButton(
                onPressed: () {
                  debugPrint('Outlined Button Pressed!');
                },
                child: const Text('Outlined Button')),
            TextButton(
                onPressed: () {
                  debugPrint('Text Button Pressed!');
                },
                child: const Text('Text Button')),
          ],
        ));
  }
}
