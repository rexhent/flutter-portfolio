import 'dart:ui';
import 'dart:async';
import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

class MyWidget extends StatefulWidget {
  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  String textValue = 'Loading...';

  void fetchData() async {
    if (textValue == 'Loading...') {
      var response =
          await http.get(Uri.parse('http://170.64.185.29:5000/get-variable'));
      if (response.statusCode == 200) {
        var data = response.body;
        setState(() {
          textValue = data;
        });
      }
    }
  }

  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(Duration(milliseconds: 1), (timer) {
      fetchData();
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Flask'),
      ),
      body: Center(
        child: Text(
          textValue,
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
