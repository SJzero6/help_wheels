import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/gestures.dart';
import 'package:helponwheels/driver/Dlogin.dart';


class Dsignup extends StatefulWidget {
  const Dsignup({super.key});

  @override
  State<Dsignup> createState() => _DsignupState();
}

class _DsignupState extends State<Dsignup> {

  bool istick =true;
  bool isHidden = true;

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
                  const TextField(decoration: InputDecoration(border: OutlineInputBorder(),hintText: 'Enter the Username',
                  labelStyle: TextStyle(color: Colors.red),
                  labelText: 'username',
                  focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red))),),
                  
                  
                  
                  const SizedBox(height: 50,),
                  TextField(
                    obscureText: isHidden,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(onPressed: (){}, icon: isHidden?Icon(Icons.visibility):Icon(Icons.visibility_off),),
                      border: const OutlineInputBorder(),hintText: 'Enter the Password',labelText: 'Password',labelStyle: TextStyle(color: Colors.red,),
                  focusedBorder:const OutlineInputBorder(borderSide: BorderSide(color: Colors.red)) ),),
                  const SizedBox(height: 20,),
        
                  Terms_and_policy(),
                  const SizedBox(height: 20,),
                  
                  
                  Container(width: MediaQuery.of(context).size.width,
                  height: 50,
                    margin: const EdgeInsets.only(left: 3,right: 3),
                    child: ElevatedButton(style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red
                    ),
                      onPressed: (){}, 
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

                            Navigator.push(context, MaterialPageRoute(builder: (context) => const DloginPage(),));

                          }, child: Text('Sign In',
                          style: GoogleFonts.albertSans(textStyle: const TextStyle(color: Colors.red ),fontSize:20 ),),) 
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
                          }, icon:istick? Icon(Icons.check_box_outline_blank,color: Colors.red,):Icon(Icons.check_box,color: Colors.red,)),
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
}