import 'package:flutter/material.dart';
import 'package:intern_project/pages/login_page.dart';

import '../buttons.dart';
import '../textfeild.dart';

class SignUp extends StatefulWidget {
  SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  void signUserUp() {}
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(children: [
              SizedBox(height: 30,),
               Text(
                  'Create Account',
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.w900),
                ),
                 Center(
                   child: Image(
                               image: AssetImage('assets/al7i4-zhaoz-removebg-preview.png'),
                               height: 200,
                             ),
                 ),
                SizedBox(height: 30,),
                MyTextField(
                  controller:usernameController ,
                  hintText: 'Username',
                  obscureText: false,
                ),
                const SizedBox(
                  height: 10,
                ),
                MyTextField(
                  controller:passwordController ,
                  hintText: 'Password',
                  obscureText: true,
              
                ),
                const SizedBox(
                  height: 10,
                ),
        
                MyTextField(
                  controller:passwordController ,
                  hintText: 'Re-Enter Password',
                  obscureText: true,
              
                ), 
                SizedBox(height: 50,),
              
               MyButton(
                text: "Sign Up",
                onTap: signUserUp,
                 ),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Already a member?'),
                    TextButton(onPressed: (){Navigator.push(context,MaterialPageRoute(builder: (context)=> LoginPage()),);}, child:  Text('LogIn')),
                  ],
                 )
              
            ]),
        ),
        
        
      ),
    );
  }
}
