import 'package:flutter/material.dart';
import 'package:helponwheels/Hospital/Hlogin.dart';
//import 'package:google_fonts/google_fonts.dart';
import 'package:helponwheels/User/login.dart';
import 'package:helponwheels/driver/Dlogin.dart';

class Entry extends StatefulWidget {
  const Entry({super.key});

  @override
  State<Entry> createState() => _EntryState();
}

class _EntryState extends State<Entry> {
 
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.only(left: 10, right:10,bottom: 10, top: 10),
        child: Column(
          children: [
            Image.asset('assets/logo-removebg-preview.png'),
            SizedBox(height: 20,),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(left: 10,right:10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder:(context) => LoginPage(),));
                },
                child: Container(
                  height: 120,
                  width: 120,
                  child: Card(
                    child: 
                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.person_add,color: Colors.white,size: 30,),
                          Text('user',style:  
                          TextStyle(fontSize: 25,color: Colors.white,)),
                        ],
                      ),
                    ),
                    color: Colors.red,
                    elevation: 10,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
          
                  )
                ),
              ),
               GestureDetector(
                onTap: (){
                   Navigator.push(context, MaterialPageRoute(builder:(context) =>HloginPage() ,));
                },                                        
                child: Container(
                  height: 120,
                  width: 120,
                  child: Card(
                    child: 
                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.person_add,color: Colors.white,size: 30,),
                          Text('Hospital',style:  
                          TextStyle(fontSize: 25,color: Colors.white,)),
                        ],
                      ),
                    ),
                    color: Colors.red,
                    elevation: 10,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
          
                  )
                ),
              ),
               GestureDetector(
                onTap: (){
                   Navigator.push(context, MaterialPageRoute(builder:(context) => DloginPage(),));
                },
                child: Container(
                  height: 120,
                  width: 120,
                  child: Card(
                    child: 
                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.person_add,color: Colors.white,size: 30,),
                          Text('Driver',style:  
                          TextStyle(fontSize: 25,color: Colors.white,)),
                        ],
                      ),
                    ),
                    color: Colors.red,
                    elevation: 10,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
          
                  )
                ),
              ),
                ],
              ),
            )
            
          ],
        ),
      )

    );
  }
}