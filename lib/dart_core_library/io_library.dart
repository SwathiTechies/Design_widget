import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HttpExample extends StatefulWidget {
  @override
  _HttpExampleState createState() => _HttpExampleState();
}

class _HttpExampleState extends State<HttpExample> {
  String responseStatus = '';

  void fetchData() async {
    try {
      final response = await http.get(Uri.parse('https://example.com'));
      setState(() {
        responseStatus = 'Response status code: ${response.statusCode}';
      });
    } catch (e) {
      setState(() {
        responseStatus = 'Error: $e';
      });
    }
  }

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Text(responseStatus);
  }
}