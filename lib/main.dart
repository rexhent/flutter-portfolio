import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'made_with_flutter.dart';
import 'navbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true, brightness: Brightness.light),
      darkTheme: ThemeData(useMaterial3: true, brightness: Brightness.dark),
      home: Scaffold(
        drawer: MyNavbar(),
        drawerEdgeDragWidth: 500,
        appBar: AppBar(
          //backgroundColor: Colors.purple.shade300,
          centerTitle: true,

          title: const Text(
            'Home',
            style: TextStyle(
                fontFamily: 'Inter',
                fontVariations: [FontVariation('wght', 600)]),
          ),
          actions: <Widget>[
            const IconButton(
                onPressed: SystemNavigator.pop,
                icon: Icon(
                  Icons.close,
                )),
          ],
        ),
        body: const SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Center(
                  child: Text(
                'Hello!',
                style: TextStyle(
                  fontSize: 28,
                  fontFamily: 'Inter',
                ),
              )),
              Text(
                'This is a basic Flutter App built to experiment',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Inter',
                ),
              ),
              MadeWithFlutter(),
            ],
          ),
        ),
      ),
    );
  }
}
