import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:helponwheels/User/history.dart';
import 'package:helponwheels/User/home.dart';
import 'package:helponwheels/User/profile.dart';

class BookingList extends StatefulWidget {
  const BookingList({super.key});

  @override
  State<BookingList> createState() => _BookingListState();
}

class _BookingListState extends State<BookingList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: _Drawer(),
      body: Container(
        margin: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
              Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                       Text("My Bookings",
                 style: GoogleFonts.albertSans(textStyle: const 
                 TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),),
                      
                        Image.asset('assets/logo-removebg-preview.png',width: 80,height: 80,)
                      
                    ],
                  ),
                  Container(
                height: 150,
                width: MediaQuery.of(context).size.width,
                child: Card(
                  child: 
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset('assets/white wheels.png',scale:5 ),
                        Text('10 min Away from\nthe location ',style: GoogleFonts.albertSans(textStyle: 
                          TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white))),
                      ],
                    ),
                  ),
                  color: Colors.red,
                  elevation: 10,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        
                )
              ),
          ],
        )
        ,
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
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage(),));
                    },
                  ),
                  ListTile(leading: Icon(Icons.person),
                    title: Text('Profile',style: GoogleFonts.albertSans(textStyle: TextStyle(
                      fontSize: 20
                    )),),
                    trailing: Icon(Icons.keyboard_arrow_left_outlined),
                    onTap: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder:(context) => ProfilePage(),));
                    },
                  ),ListTile(leading: Icon(Icons.history),
                    title: Text('History',style: GoogleFonts.albertSans(textStyle: TextStyle(
                      fontSize: 20
                    )),),
                    trailing: Icon(Icons.keyboard_arrow_left_outlined),
                    onTap: (){
                     Navigator.pushReplacement(context, MaterialPageRoute(builder:(context) => History(),));
                    },
                  ),ListTile(leading: Icon(Icons.safety_check_rounded),
                    title: Text('My Booking',style: GoogleFonts.albertSans(textStyle: TextStyle(
                      fontSize: 20
                    )),),
                    trailing: Icon(Icons.keyboard_arrow_left_outlined),
                    onTap: (){
                     
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