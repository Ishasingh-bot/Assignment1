import 'package:flutter/material.dart';
import 'package:intern_project/pages/signup_page.dart';
import 'package:intern_project/textfeild.dart';

import '../buttons.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  
  
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  void signUserIn() {}
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: SingleChildScrollView(
          child: SafeArea(
              child: Column(
              children: [
          const Padding(
            padding: EdgeInsets.only(top: 50),
            child: Text(
              'Welcome Back',
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.blueAccent,
                  fontWeight: FontWeight.w900),
            ),
          ),
          const Center(
            child: Image(
              image: AssetImage('assets/project_iconu-removebg-preview.png'),
              height: 300,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
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
            SizedBox(height: 10,),
                // text daalrha neeche wala
                 Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 25),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.end,
                     children: [
                       Text('Forgot Password?',style: TextStyle(color: Colors.grey[700]),),
                     ],
                   ),
                 ),
                 SizedBox(height: 25,),
              
               MyButton(
                text: "Login",
                onTap: signUserIn,
               ),
          
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Not a member?'),
                  TextButton(onPressed: (){Navigator.push(context,MaterialPageRoute(builder: (context)=> SignUp()),);}, child:  Text('sign up')),
                ],
               )
               

              ],

            ),
            ),
        ));
  }
}
