import 'dart:collection';

import 'package:flutter/material.dart';

class QueueIterator extends StatefulWidget {
  @override
  _QueueIteratorState createState() => _QueueIteratorState();
}

class _QueueIteratorState extends State<QueueIterator> {
  Queue que = Queue();
  late Iterator i;
  
  late  Function(String) callBack;

  @override
  void initState() {
    super.initState();
    que.addAll([10, 20, 30]);
    i = que.iterator;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Queue Elements:',
          style: TextStyle(fontSize: 20),
        ),
        SizedBox(height: 10),
        Column(
          children: _buildQueueElements(),
        ),
        InkWell(
          onTap: (){
            callBack('a');
          },
          child: Container(
            height: 40,
            width: 40,
            color: Colors.red,
          ),
        )
      ],
    );
  }

  List<Widget> _buildQueueElements() {
    List<Widget> widgets = [];

    while (i.moveNext()) {
      widgets.add(
        Text(
          '${i.current}',
          style: TextStyle(fontSize: 16),
        ),
      );
    }

    return widgets;
  }
}