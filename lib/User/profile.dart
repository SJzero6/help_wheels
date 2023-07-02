import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:helponwheels/User/booking/bookinglist.dart';
import 'package:helponwheels/User/history.dart';
import 'package:helponwheels/User/home.dart';


class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: _Drawer(),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            child: Column(
                children: [
                  Container(
                   //color: Colors.blue[100],
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
                  Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(left: 30,right: 10),
                    child: Row(
                      children: [
                        CircleAvatar(
                          maxRadius: 31,
                          backgroundImage: NetworkImage('https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png',),
                        ),
                        SizedBox(width: 20,),
                        Column(
                          children: [
                            Text('PROFILE NAME',style: GoogleFonts.albertSans(textStyle: 
                            TextStyle(fontSize: 18,))),
                             Text('gmail@gmail.com',style: GoogleFonts.albertSans(textStyle: 
                            TextStyle(fontSize: 18,))),
                  
                            
                          ],
                        
                        )
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      const SizedBox(height: 20,),
                      Container(
          
                        width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(left: 30,right: 10),
                        child: TextFormField(  
                                decoration: const InputDecoration(  
                                icon: const Icon(Icons.person,color: Colors.red,),  
                                hintText: 'Enter your name',  
                                labelText: 'Name', 
                                labelStyle: TextStyle(color: Colors.red) ,
                                focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.red))
                              ),  
                            ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20,),  
            Container(
              width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(left: 30,right: 10),
              child: TextFormField(  
                decoration: const InputDecoration(  
                  icon: const Icon(Icons.phone,color: Colors.red,),  
                  hintText: 'Enter a phone number',  
                  labelText: 'Phone',  
                   labelStyle: TextStyle(color: Colors.red) ,
                                focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.red))
                ),  
              ),
            ),
            const SizedBox(height: 20,),  
            Container(
              width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(left: 30,right: 10),
              child: TextFormField(  
                decoration: const InputDecoration(  
                icon: const Icon(Icons.email,color: Colors.red,),  
                hintText: 'Enter your Email ID',  
                labelText: 'Email',  
                 labelStyle: TextStyle(color: Colors.red) ,
                                focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.red))
                ),  
               ),
            ),
            const SizedBox(height: 20,),
            Container(
              width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(left: 30,right: 10),
              child: TextFormField(  
                decoration: const InputDecoration(  
                icon: const Icon(Icons.key,color: Colors.red,),  
                hintText: 'Enter your password',  
                labelText: 'Password',  
                 labelStyle: TextStyle(color: Colors.red) ,
                                focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.red))
                ),  
               ),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                
                ElevatedButton(onPressed: (){}, child: Text('settings',style: GoogleFonts.albertSans()),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red,
                fixedSize: const Size(100,40)),),
                ElevatedButton(onPressed: (){}, child: Text('OK',style: GoogleFonts.albertSans(),),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red,
                fixedSize:const Size(100,40)),)
              ],
            ),
            SizedBox(height: 20,),Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.logout_rounded,color: Colors.red,),
                TextButton(onPressed: (){}, child: Text('Logout',
                style: GoogleFonts.albertSans(textStyle: TextStyle(color: Colors.red)),)
                  
                )
              ],
            )

                  
              
                ]
                ),
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
                      Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(),));
                    },
                  ),
                  ListTile(leading: Icon(Icons.person),
                    title: Text('Profile',style: GoogleFonts.albertSans(textStyle: TextStyle(
                      fontSize: 20
                    )),),
                    trailing: Icon(Icons.keyboard_arrow_left_outlined),
                    onTap: (){
                      
                    },
                  ),ListTile(leading: Icon(Icons.history),
                    title: Text('History',style: GoogleFonts.albertSans(textStyle: TextStyle(
                      fontSize: 20
                    )),),
                    trailing: Icon(Icons.keyboard_arrow_left_outlined),
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => History(),));
                    },
                  ),ListTile(leading: Icon(Icons.safety_check_rounded),
                    title: Text('My Booking',style: GoogleFonts.albertSans(textStyle: TextStyle(
                      fontSize: 20
                    )),),
                    trailing: Icon(Icons.keyboard_arrow_left_outlined),
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => BookingList(),));
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