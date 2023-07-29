import 'dart:ui';
import 'package:flutter/material.dart';

class CounterWidget extends StatefulWidget {
  @override
  _CounterWidgetState createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  var _count = 0;
  void _increment() {
    setState(() {
      _count++;
    });
  }

  void _reset() {
    setState(() {
      _count = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text("Counter")),
      body: Container(
          child: SafeArea(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                child: Text(
                  'The count is $_count',
                  style: TextStyle(
                    // fontFamily: 'Inter',
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: _reset,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        'Reset Count!',
                        style: TextStyle(fontSize: 20),
                      ),
                    )),
              ),
            ]),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: _increment,
        child: Icon(
          Icons.add,
        ),
      ),
    );
  }
}
