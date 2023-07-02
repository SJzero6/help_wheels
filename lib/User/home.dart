import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:helponwheels/User/blood.dart';
import 'package:helponwheels/User/booking/bookingambu.dart';
import 'package:helponwheels/User/booking/bookinglist.dart';
import 'package:helponwheels/User/history.dart';
import 'profile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        drawer: _Drawer(),
        body: Container(
          margin:EdgeInsets.only(left: 10, right: 10) ,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Container(
        
                margin: EdgeInsets.only(left: 10,right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Help On Wheels",
                    style: GoogleFonts.albertSans(
                      textStyle: TextStyle(fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontStyle:FontStyle.italic,
                      color: Colors.red)),),
                      Image.asset('assets/logo-removebg-preview.png',width: 100,height: 100,)
                    
                  ],
                ),
              ),
           
            SizedBox(height: 30,),
            GestureDetector(
              onTap: (){
                
              },
              child: Container(
                height: 150,
                width: MediaQuery.of(context).size.width,
                child: Card(
                  child: 
                  Center(
                    child: Text('EMERGENCY BOOKING',style: GoogleFonts.albertSans(textStyle: 
                      TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white))),
                  ),
                  color: Colors.red,
                  elevation: 10,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        
                )
              ),
            ),
            SizedBox(height: 20,),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => AmbuBooking(),));
              },
              child: Container(
                height: 150,
                width: MediaQuery.of(context).size.width,
                child: Card(
                  child: Center(
                    child: Text('AMBULANCE BOOKING',style: GoogleFonts.albertSans(textStyle: 
                      TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white)))),
                  color: Colors.red,
                  elevation: 10,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        
                )
              ),
            ),
            SizedBox(height: 20,),
            GestureDetector(
              onTap: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context) => Blood(),));
              },
              child: Container(
                height: 150,
                width: MediaQuery.of(context).size.width,
                child: Card(
                  child: Center(
                    child: Text('BLOOD DONATION CAMP\n              BOOKING',style: GoogleFonts.albertSans(textStyle: 
                      TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white))),
                  ),
                  color: Colors.red,
                  elevation: 10,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        
                )
              ),
            ),
            
            ],
          ),
        ),
        
      ),
    );
  }

  Drawer _Drawer() {
    return Drawer(
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
        ),
        child:ListView(
          children: [
           DrawerHeader(
            
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
              
              color: Colors.red
            ),
            child: Column(
              children: [
                Column(
                children: [
                   const SizedBox(height: 10,),
                CircleAvatar(
                  maxRadius: 31,
                  backgroundImage:NetworkImage('https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png'),
                ),
                const SizedBox(height: 10,),
                      Text("Profile Name",style: GoogleFonts.albertSans(textStyle: 
                      TextStyle(fontSize: 14,fontWeight: FontWeight.bold)),),
                      const SizedBox(height: 10,),
                      Text("user@gmail.com",style: GoogleFonts.albertSans(textStyle: 
                      TextStyle(fontSize: 18,color: Color.fromARGB(255, 217, 216, 216))),),
                     
                ],
           ),
              ],
            )),
            ListTile(leading: Icon(Icons.home),
                    title: Text('Home',style: GoogleFonts.albertSans(textStyle: TextStyle(
                      fontSize: 20
                    )),),
                    trailing: Icon(Icons.keyboard_arrow_left_outlined),
                    onTap: (){
                      
                    },
                  ),
                  ListTile(leading: Icon(Icons.person),
                    title: Text('Profile',style: GoogleFonts.albertSans(textStyle: TextStyle(
                      fontSize: 20
                    )),),
                    trailing: Icon(Icons.keyboard_arrow_left_outlined),
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder:(context) => ProfilePage(),));
                    },
                  ),ListTile(leading: Icon(Icons.history),
                    title: Text('History',style: GoogleFonts.albertSans(textStyle: TextStyle(
                      fontSize: 20
                    )),),
                    trailing: Icon(Icons.keyboard_arrow_left_outlined),
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder:(context) => History(),));
                    },
                  ),ListTile(leading: Icon(Icons.safety_check_rounded),
                    title: Text('My Booking',style: GoogleFonts.albertSans(textStyle: TextStyle(
                      fontSize: 20
                    )),),
                    trailing: Icon(Icons.keyboard_arrow_left_outlined),
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder:(context) => BookingList(),));
                    },
                  ),SizedBox(height: 200,),
                  ElevatedButton(onPressed: (){},
                   child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                     children: [Icon(Icons.logout),
                       Text('Logout',style: GoogleFonts.albertSans(textStyle: TextStyle()),),
                     ],
                   ), 
                   style: ElevatedButton.styleFrom(backgroundColor: Colors.red,
                   
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),)
          ],
        ),

      );
  }
}