import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool loginstart = false;
  var name;
  final _formkey = GlobalKey<FormState>();
   movetohome(BuildContext context) async {
     if(_formkey.currentState.validate()) {
       setState(() {
         loginstart = true;
       });
       await Future.delayed(Duration(seconds: 1));
       await Navigator.pushNamed(context, "/home");
       setState(() {
         loginstart = false;
       });
     }

   }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Form(
            key: _formkey,
            child: Column(
              children: [
                Image.asset(
                  "assets/images/login.png",
                  fit: BoxFit.cover,
                ),
                SizedBox(height: 20.0),
                Text("Welcome $name",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                SizedBox(height: 40.0),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: 32.0),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                            labelText: "Username", hintText: "Enter Username"),
                        validator: (value){
                          if(value.isEmpty){
                            return "Username can't  Empty";
                          }

                        },
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                            labelText: "Password", hintText: "Enter Password"),

                        validator: (value){
                          if(value.isEmpty){
                            return "Password is empty";
                          }
                          else if(value.length < 6){
                            return "password must be atlist 6 charecter";
                          }

                        },
                      ),
                      SizedBox(height: 40.0),
                      Material(
                        color: Colors.purple,
                        borderRadius: loginstart ? BorderRadius.circular(50.0) : BorderRadius.circular(8),

                        child: InkWell(
                          onTap: () => movetohome(context),
                          child: AnimatedContainer(
                            duration: Duration(seconds: 1),
                            child: loginstart ? Icon(Icons.done,color: Colors.white,) :Text("Login",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                            height: 50,
                            width: loginstart ? 50 : 150,
                            alignment: Alignment.center,
                          ),
                        ),
                      )
                      // ElevatedButton(
                      //   child: Text("Login"),
                      //   style: TextButton.styleFrom(minimumSize: Size(150, 40)),
                      //   onPressed: () {
                      //     Navigator.pushNamed(context, "/home");
                      //   },
                      // ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
