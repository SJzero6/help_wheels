
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:helponwheels/User/home.dart';
import 'package:helponwheels/User/signup.dart';



class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  bool ishidden =true;
   
    final _emailtextcontroller = TextEditingController();
    final _passwordtextcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
           // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 180,
                width: 180,
                child: Image.asset('assets/logo-removebg-preview.png'),),
                const SizedBox(height: 20,),
                Container(margin: const EdgeInsets.only(left: 20, right: 20),
                  alignment: Alignment.topLeft,
                  child: Row(
                    children: [
                       Text("user",style: GoogleFonts.albertSans(textStyle: const TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),),
                      SizedBox(width: 10,),
                      Text("Sign In",style: GoogleFonts.albertSans(textStyle: const TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),),
                    ],
                  )),
               
               
                const SizedBox(height: 20,),
                Container(
                margin: const EdgeInsets.only(left: 20,right: 20),
                child:Column(children :[
                 TextField(
                controller: _emailtextcontroller,
                decoration: InputDecoration(border: OutlineInputBorder(),hintText: 'Enter the Email',
                labelStyle: TextStyle(color: Colors.red),
                labelText: 'Email',
                focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red))),),
                
                
                
                const SizedBox(height: 20,),
                TextField(
                  controller: _passwordtextcontroller,
                  obscureText: ishidden,
                  decoration: InputDecoration(suffixIcon: IconButton(onPressed: (){

                    setState(() {
                      ishidden =!ishidden;
                    });
                  }, icon: ishidden?const Icon(Icons.visibility,color: Colors.red,):const Icon(Icons.visibility_off,color: Colors.red,)),
                    border: const OutlineInputBorder(),
                    hintText: 'Enter the Password',
                    labelText: 'Password',
                    labelStyle: const TextStyle(color: Colors.red,),
                focusedBorder:const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red)) ),),
                const SizedBox(height: 20,),
                
                Container(width: MediaQuery.of(context).size.width,
                height: 50,
                  margin: const EdgeInsets.only(left: 3,right: 3),
                  child: ElevatedButton(style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red
                  ),
                    onPressed: (){
                    signin();
                    }, 
                    child: Text('Sign In',
                    style:GoogleFonts.albertSans(textStyle: 
                    const TextStyle(fontSize:20 ),
                    fontWeight: FontWeight.bold) ,)))])),
                  const SizedBox(height: 20,),
                  Container(
                    margin: const EdgeInsets.only(left: 20,right: 20),
                    child: Row(
                      mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                      children: [
                        const Text("Forgot Password ?"),
                        TextButton(style: TextButton.styleFrom(foregroundColor: Colors.red),onPressed: (){

                            Navigator.push(context, MaterialPageRoute(builder: (context) => const Signup(),));

                        }, child: Text('Sign Up',style: GoogleFonts.albertSans
                        (textStyle: const TextStyle(color: Colors.red ),fontSize:20 )))
                      ],
                    ),
                  )
            ],
          ),
        ),
      ),
    );
  }
   
 signin() async {
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
    try {
      
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _emailtextcontroller.text.trim(),
        password: _passwordtextcontroller.text.trim(),
      );
    } on FirebaseAuthException catch (e) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(e.message ?? "")));
      return;
    }

    Navigator.pushAndRemoveUntil(context,
        MaterialPageRoute(builder: (context) => HomePage()), (route) => false);
  }
}