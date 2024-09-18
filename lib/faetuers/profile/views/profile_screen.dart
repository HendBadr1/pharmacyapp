import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pharmacy/faetuers/login/views/login_screen.dart';

import '../../../core/utls/app_images.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text('Profile',style: TextStyle(fontSize: 24,fontWeight: FontWeight.w500),),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              SizedBox(height: 20),
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage(AppImages.profileimage),
              ),
              SizedBox(height: 10),
              Text(
                'John Doe',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'john.doe@example.com',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
                '123-456-7890',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 100,),
              GestureDetector(
                onTap: (){
    Navigator.push(context, MaterialPageRoute(builder: (c){
    return LoginScreen();}));
                },
                child: Center(
                  child: Container(
                    child: Text("                                     Logout",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),

                    width:333 ,
                    height: 44,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Color(0xff4C69B2),
                      border: Border.all(

                        color: Color(0xfC4BFBF),
                        width: 3,

                    ),
                  ),
                ),
              )

              )],

          ),
        ),
      ),
    );
  }
}
