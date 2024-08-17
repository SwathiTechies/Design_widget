import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color(0xff221a8f),
      body: Center(
        child: Padding(
          padding:  EdgeInsets.only(left: 20,right: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/login.png'),
              Text('Welcome Back!', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),),
              SizedBox(height: 20),
              Text('Please login into your existing account', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400, color: Colors.white),),
              SizedBox(height: 20),
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25)
                  ),
                  hintText: 'Your Email',
                    hintStyle: TextStyle(fontSize: 16, color: Colors.white),
                  // labelText: 'Enter Your Email',
                  //   labelStyle: TextStyle(fontSize: 16,color: Colors.white )

                ),

              ),
              SizedBox(height: 20),
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25)
                    ),
                  hintText: 'Your Passwords',
                  hintStyle: TextStyle(fontSize: 16, color: Colors.white),
                  // labelText: 'Enter Your Password',
                  // labelStyle: TextStyle(fontSize: 16,color: Colors.white )
                ),
              ),
              SizedBox(height: 20),
              OutlinedButton(onPressed: (){},
                  style: OutlinedButton.styleFrom(
                    padding: EdgeInsets.only(right: 40,left: 40),
                    backgroundColor: Colors.greenAccent,
                    side: BorderSide(width: 1),
                    fixedSize: Size(130, 50),
                  ),
                  child: Text('Log In', style: TextStyle(fontSize: 18, color: Colors.white),))
            ],
          ),
        ),
      ),
    );
  }
}
