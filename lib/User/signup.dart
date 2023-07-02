
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/gestures.dart';
import 'package:helponwheels/User/home.dart';
import 'login.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {

  bool istick =true;
  bool isHidden = true;
  bool _isHidden = true;
  
  final _emailtextcontroller = TextEditingController();
  final _passwordtextcontroller = TextEditingController();
  final _confirmpasscontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20,top: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Sign Up",
                    style: GoogleFonts.albertSans(
                      textStyle: 
                      const TextStyle(fontSize: 30,
                      fontWeight: FontWeight.bold)),),
                      SizedBox(
                      height: 100,
                      width: 100,
                      child: Image.asset('assets/logo-removebg-preview.png'),),
                  ],
                ),
              ),
               const SizedBox(height: 20,),
                  Container(
                  margin: const EdgeInsets.only(left: 20,right: 20),
                  child:Column(
                    
                    children :[

                   TextField(
                    controller: _emailtextcontroller,
                    decoration: InputDecoration(border: OutlineInputBorder(),
                  hintText: 'Enter the Email',
                  labelStyle: TextStyle(color: Colors.red),
                  labelText: 'Email',
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red))),),
                  const SizedBox(height: 20,),
                  TextField(
                    controller: _passwordtextcontroller,
                    obscureText: isHidden,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(onPressed: (){
                        setState(() {
                          isHidden=!isHidden;
                        });
                      },
                       icon: isHidden?Icon(Icons.visibility,color: Colors.red,):Icon(Icons.visibility_off,color: Colors.red,),),
                      border: const OutlineInputBorder(),
                      hintText: 'Enter the Password',
                      labelText: 'Password',
                      labelStyle: TextStyle(color: Colors.red,),
                  focusedBorder:const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red)) ),),
                  const SizedBox(height: 20,),
                  TextField(
                    controller: _confirmpasscontroller,
                    obscureText: _isHidden,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(onPressed: (){
                        setState(() {
                          _isHidden=!_isHidden;
                        });
                      },
                       icon: _isHidden?Icon(Icons.visibility,color: Colors.red,):Icon(Icons.visibility_off,color: Colors.red,),),
                      border: const OutlineInputBorder(),
                      hintText: 'confirm the Password',
                      labelText: 'confirm Password',
                      labelStyle: TextStyle(color: Colors.red,),
                  focusedBorder:const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red)) ),),
                  const SizedBox(height: 20,),
        
                  Terms_and_policy(),
                  const SizedBox(height: 20,),
                  
                  
                  Container(width: MediaQuery.of(context).size.width,
                  height: 50,
                    margin: const EdgeInsets.only(left: 3,right: 3),
                    child: ElevatedButton(style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red
                    ),
                      onPressed: (){
                        _handleRegister();
                      }, 
                      child: Text('Continue',
                      style:GoogleFonts.albertSans(textStyle: 
                      const TextStyle(fontSize:20 ),
                      fontWeight: FontWeight.bold) ,)))])),
                      const SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('Have an account?',style: TextStyle(fontSize: 15),),
                          TextButton(onPressed: (){

                            Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginPage(),));

                          }, child: Text('Sign In',
                          style: GoogleFonts.albertSans(
                            textStyle: const TextStyle(color: Colors.red ),
                            fontSize:20 ),),) 
                        ],
                      )
            
            ],
          ),
        ) ,
      ),
    );
  }

  Container Terms_and_policy() {
    return Container(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          IconButton(onPressed: (){
                            setState(() {
                              istick =!istick;
                            });
                          }, icon:istick? Icon(Icons.check_box_outline_blank,color: Colors.red,
                          ):Icon(Icons.check_box,color: Colors.red,)),
                          Center(
                            child: Text.rich(
                              TextSpan(
                                    text: 'I agree to the ', style: TextStyle(
                                     color: Colors.black
                                  ),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: 'Terms of Services', style: TextStyle(
                                         color: Colors.red,
                                        decoration: TextDecoration.underline,
                                      ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                          // code to open / launch terms of service link here
                                          }
                                      ),
                                      TextSpan(
                                        text: ' and ', style: TextStyle(
                                         color: Colors.black
                                      ),
                                        children: <TextSpan>[
                                          TextSpan(
                                            text: 'Privacy Policy', style: TextStyle(
                                             color: Colors.red,
                                            decoration: TextDecoration.underline
                                          ),
                                            recognizer: TapGestureRecognizer()
                                              ..onTap = () {
                                              // code to open / launch privacy policy link here
                                                }
                                          )
                                        ]
                                      )
                                    ]
                                  )
                            ),
                          )
                        ],
                      ),
                     
                    ],
                  ),
                );
  }
    _handleRegister() async {
    if (_emailtextcontroller.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Email is required'),
          backgroundColor: Colors.red,
        ),
      );
      return;
    }

    RegExp emailRegExp = RegExp(
        r'^[a-zA-Z0-9.a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9]+\.[a-zA-Z]+');
    if (!emailRegExp.hasMatch(_emailtextcontroller.text)) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Email is not valid'),
          backgroundColor: Colors.red,
        ),
      );
      return;
    }

    if (_passwordtextcontroller.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Password is required'),
          backgroundColor: Colors.red,
        ),
      );
      return;
    }
    if(istick==true){
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Enable terms and conditions'),
          backgroundColor: Colors.red,
        ),
      );
      return;
    }

    if (_confirmpasscontroller.text != _passwordtextcontroller.text) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Passwords do not match'),
          backgroundColor: Colors.red,
        ),
      );
      return;
    }

    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: _emailtextcontroller.text.trim(),
        password: _passwordtextcontroller.text.trim(),
      );
    } on FirebaseAuthException catch (e) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(e.message ?? "")));
      return;
    }

    Navigator.pushAndRemoveUntil(context,
        MaterialPageRoute(builder: (context) => LoginPage()), (route) => false);
  }
}