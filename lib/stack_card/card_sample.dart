import 'package:flutter/material.dart';

class CardSample extends StatelessWidget {
  const CardSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom Card Example'),
      ),
      body: Center(
        child: Card(
          color: Colors.blueAccent,
          elevation: 8.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.album, size: 50),
                  title: Text('Card Title', style: TextStyle(fontSize: 24)),
                  subtitle: Text('This is a subtitle'),
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.start,
                  children: <Widget>[
                    TextButton(
                      child: Text('ACTION 1'),
                      onPressed: () {},
                    ),
                    TextButton(
                      child: Text('ACTION 2'),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

