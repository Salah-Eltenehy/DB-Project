

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:order_processing/screen/SearchScreen.dart';

import '../Constants.dart';
import '../component/findlocation_Map.dart';
import 'MainApp.dart';

class Account extends StatefulWidget {

  @override
  _AccountState  createState() => _AccountState ();
}

class _AccountState extends State<Account> {
  var obsescureText =true;

  @override
  Widget build(BuildContext context) {
    final  size  = MediaQuery.of(context).size;
     return Container(
         padding: EdgeInsets.only(left: 15,top: 20,right: 15),
         child: GestureDetector(
           onTap: (){
             FocusScope.of(context).unfocus();
           },
           child: ListView(
             children: [
                Center(
                  child: Stack(
                    children: [
                      Container(
                        width: 130,
                        height: 130,
                        decoration: BoxDecoration(
                          border: Border.all(width: 4,color: Colors.white),
                          boxShadow:[ BoxShadow(
                            spreadRadius: 2,
                            blurRadius:10,
                            color: Colors.black.withOpacity(0.1),
                          )
                      ],
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                              'https://wvnpa.org/content/uploads/blank-profile-picture-973460_1280-768x768.png'
                            )
                          )
                        ),
                      )
                    ],
                  ),
                ),
               SizedBox(height: 30),
               buildtextfield("Email Address"," zizo@zizo,com",false),
               buildtextfield("Password","*********",true),
               buildtextfield("User name","zizo",false),
               buildtextfield("First Name","Abdelaziz",false),
               buildtextfield("Second Name","Mohamed",false),
               buildtextfield("Phone Number","01551641621",false),
               Container(
                 height: 450,
                 width: size.width * 0.8,
                 child: FindLocation(),
               ),
               SizedBox(height: 30),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   OutlinedButton(onPressed:(){
                     Navigator.push(context,  MaterialPageRoute(builder: (context) =>  MainApp()));
                   }, child: Text("Cancel",style: TextStyle(
                     fontSize: 15,
                     letterSpacing: 2,
                     color: Colors.black,

                   ),),
                     style: OutlinedButton.styleFrom(
                       padding: EdgeInsets.symmetric(horizontal: 50),
                       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
                     ),
                   ),
                   ElevatedButton(onPressed: (){
                     Navigator.push(context,  MaterialPageRoute(builder: (context) =>  MainApp()));
                   }, child: Text("Save",style: TextStyle(
                     fontSize: 15,
                     letterSpacing: 2,
                     color: Colors.white,
                   ),),
                     style: ElevatedButton.styleFrom(
                       primary: kPrimaryColor,
                       padding: EdgeInsets.symmetric(horizontal: 30),
                       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
                     ),
                   )
                 ],
               )
             ],
           ),
         ),
       );
  }
Widget buildtextfield(String label ,String placeholder, bool ispasswordTextField)
{
  return Padding(
      padding: EdgeInsets.only(bottom: 30),
     child: TextField(
       obscureText: ispasswordTextField? obsescureText :false ,
       decoration: InputDecoration(
         suffixIcon: ispasswordTextField?
             IconButton(onPressed: (){
               setState(() {
                 obsescureText =!obsescureText;
               });
             }, icon: Icon(Icons.remove_red_eye),
             ):null,
             contentPadding: EdgeInsets.only(bottom: 5),
             labelText: label,
             labelStyle: TextStyle(
               fontSize: 20,
               fontWeight: FontWeight.bold,
               color: kPrimaryColor,
             ),
             floatingLabelBehavior: FloatingLabelBehavior.always,
             hintText: placeholder,
             hintStyle: TextStyle(
               fontSize: 16,
               fontWeight: FontWeight.bold,
               color: Colors.grey,
             )

       ),
     ),
  );
}
}