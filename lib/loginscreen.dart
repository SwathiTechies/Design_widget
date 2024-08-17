import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class NewLoginScreen extends StatefulWidget {
  const NewLoginScreen({super.key});

  @override
  State<NewLoginScreen> createState() => _NewLoginScreenState();
}

class _NewLoginScreenState extends State<NewLoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xFF9CCC65), // Convert #5FA361 to Color object
            Color(0xFF307A73),])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('ZINENIC', style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),),
                TextField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 2.0),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 2.0),
                    ),
                    alignLabelWithHint: true,
                    labelText: 'Email Address',
                    labelStyle: TextStyle(fontSize: 22, color: Colors.white),
                  ),
                ),
                TextField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 2.0),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 2.0),
                    ),
                    alignLabelWithHint: true,
                    labelText: '********',
                    labelStyle: TextStyle(fontSize: 22, color: Colors.white),
                  ),
                ),
                OutlinedButton(onPressed: (){},
                    style: OutlinedButton.styleFrom(
                      padding: EdgeInsets.only(right: 100,left: 100,top: 15,bottom: 15),
                      backgroundColor: Colors.white,
                      //side: BorderSide(width: ),
                      //fixedSize: Size(130, 50),
                    ),
                    child: Text('Log In', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.green),)),
                Text('Forgot Password', style: TextStyle(fontSize: 18, color: Colors.white),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.facebook,color: Colors.white, size: 20,),
                        SizedBox(width: 10,),
                        Text('Facebook', style: TextStyle(fontSize: 18, color: Colors.white),),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.wb_twilight,color: Colors.white, size: 20,),
                        SizedBox(width: 10,),
                        Text('Twitter', style: TextStyle(fontSize: 18, color: Colors.white),),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        )
      ),
    );
  }
}
