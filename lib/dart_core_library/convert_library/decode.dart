import 'dart:convert';
import 'package:flutter/material.dart';

class JsonDecoderWidget extends StatefulWidget {
  @override
  _JsonDecoderWidgetState createState() => _JsonDecoderWidgetState();
}

class _JsonDecoderWidgetState extends State<JsonDecoderWidget> {
  String jsonString = '{"name":"Jane Smith","age":25,"email":"janesmith@example.com"}';
  late Map<String, dynamic> decodedData;

  @override
  void initState() {
    super.initState();
    decodedData = jsonDecode(jsonString);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Decoded Data:',
          style: TextStyle(fontSize: 20),
        ),
        SizedBox(height: 10),
        Text(
          decodedData.toString(),
          style: TextStyle(fontSize: 16),
        ),
      ],
    );
  }
}