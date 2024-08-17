import 'package:flutter/material.dart';
import 'dashboard.dart';

class logindesign extends StatefulWidget {
  logindesign({super.key});

  @override
  State<logindesign> createState() => _State();
}

bool? isChecked = false;
var isobsecured = true;
final _formKey = GlobalKey<FormState>();

void validateAndSave(BuildContext context){
  final form = _formKey.currentState;
  if (form != null && form.validate())
  {
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => DashboardScreen()),
    );
  }
  else
  {
    print('form is invalid');
  }
}


class _State extends State<logindesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('')),
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxHeight: MediaQuery.of(context).size.height,
          ),
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                TextFormField(
                  validator: (value) => value!.isEmpty ? 'Email cannot be blank':null,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(35.0),
                        borderSide: BorderSide.none),
                    prefixIcon: Icon(Icons.person_outlined),
                    hintText: 'Username',
                    hintStyle: TextStyle(
                      fontSize: 20,
                    ),
                    fillColor: Colors.grey[300],
                    filled: true,
                  ),
                ),
                SizedBox(height: 25.0),
                TextFormField(
                  validator: (value) => value!.isEmpty ? 'Password cannot be blank' : null,
                  // validator: (value) {
                  //   if (value == null || value.isEmpty) {
                  //     return 'Please enter your password';
                  //   }
                  //   return null;
                  // },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(35.0),
                        borderSide: BorderSide.none),
                    prefixIcon: Icon(Icons.lock),
                    hintText: 'Password',
                    hintStyle: TextStyle(fontSize: 20),
                    suffixIcon: IconButton(
                        icon: isobsecured
                            ? const Icon(Icons.visibility_off)
                            : const Icon(Icons.visibility),
                        onPressed: () {
                          setState(() {
                            isobsecured = !isobsecured;
                          });
                        }),
                    fillColor: Colors.grey[300],
                    filled: true,
                  ),
                  obscureText: isobsecured,
                ),
                Row(
                  children: [
                    Checkbox(
                      value: isChecked,
                      activeColor: Colors.orangeAccent,
                      checkColor: Colors.white,
                      onChanged: (newbool) {
                        setState(() {
                          isChecked = newbool;
                        });
                      },
                    ),
                    Text(
                      'Remember me',
                      style: TextStyle(color: Colors.grey, fontSize: 18),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DashboardScreen()),
                    );

                  },
                  child: Ink(
                    width: 300,
                    height: 50,
                    child: Center(
                        child: Text(
                          "LOG IN",
                          style: TextStyle(color: Colors.white, fontSize: 22),
                        )),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        gradient: LinearGradient(colors: [
                          Colors.orange,
                          Colors.pinkAccent,
                        ])),
                  ),
                ),
                SizedBox(height: 2),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Forget Password',
                    style: TextStyle(fontSize: 18, color: Colors.grey),
                  ),
                ),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Not a member?",
                      style: TextStyle(color: Colors.grey, fontSize: 18),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "SIGN UP NOW",
                          style: TextStyle(color: Colors.blue),
                        ))
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
