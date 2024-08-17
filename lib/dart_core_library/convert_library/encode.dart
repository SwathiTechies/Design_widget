import 'package:flutter/material.dart';
import 'dart:convert';


class JsonEncoderWidget extends StatefulWidget {
  @override
  _JsonEncoderWidgetState createState() => _JsonEncoderWidgetState();
}

class _JsonEncoderWidgetState extends State<JsonEncoderWidget> {
  Map<String, dynamic> user = {
    'name': 'John Doe',
    'age': 30,
    'email': 'johndoe@example.com'
  };
  late String jsonString;

  @override
  void initState() {
    super.initState();
    jsonString = jsonEncode(user);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Encoded JSON:',
          style: TextStyle(fontSize: 20),
        ),
        SizedBox(height: 10),
        Text(
          jsonString,
          style: TextStyle(fontSize: 16),
        ),
      ],
    );
  }
}
