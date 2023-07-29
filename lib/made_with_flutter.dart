import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _url = Uri.parse('https://flutter.dev');

class MadeWithFlutter extends StatelessWidget {
  const MadeWithFlutter({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
          onPressed: _launchUrl,
          child: IntrinsicWidth(
            child: Container(
              // width: 218,
              child: const ListTile(
                // dense: true,
                // isThreeLine: false,
                leading: Icon(Icons.android),
                title: Text('with Flutter!'),
              ),
            ),
          )),
    );
  }
}

Future<void> _launchUrl() async {
  if (!await launchUrl(_url)) {
    throw Exception('Could not launch $_url');
  }
}
