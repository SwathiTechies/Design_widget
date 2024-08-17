
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DailyContainer extends StatelessWidget {
  final String bankText;
  final String amtText;
  final String dateText;
  const DailyContainer({super.key,
    required this.bankText,
    required this.amtText,
    required this.dateText});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
       mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.red
                ),
              ),
              SizedBox(width: 10,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(bankText, style: TextStyle(fontSize: 18, color: Colors.black),),
                  Text(amtText, style: TextStyle(fontSize: 18, color: Colors.black,fontWeight: FontWeight.bold
                  ),),
                ],
              ),
            ],
          ),

          Text(dateText, style: TextStyle(fontSize: 18, color: Colors.green),),
        ],
      ),
    );
  }
}
