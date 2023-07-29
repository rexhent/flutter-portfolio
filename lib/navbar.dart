import 'dart:ui';
import 'package:flutter/material.dart';
import 'main.dart';
import 'flask.dart';
import 'counter.dart';

class MyNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        backgroundColor: Colors.purple,
        child: ListView(
          children: <Widget>[
            ListTile(
              leading: const Icon(
                Icons.home,
                color: Colors.white,
              ),
              title: const Text(
                'Home',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Inter',
                  fontVariations: [
                    FontVariation('wght', 600),
                  ],
                ),
              ),
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const MyApp())),
            ),
            ListTile(
              leading: const Icon(
                Icons.science,
                color: Colors.white,
              ),
              title: const Text(
                'Flask',
                style: TextStyle(color: Colors.white, fontVariations: [
                  FontVariation('wght', 600),
                ]),
              ),
              onTap: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => MyWidget())),
            ),
            ListTile(
              leading: const Icon(
                Icons.add,
                color: Colors.white,
              ),
              title: const Text(
                'Counter',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CounterWidget())),
            ),
          ],
        ),
      ),
    );
  }
}
