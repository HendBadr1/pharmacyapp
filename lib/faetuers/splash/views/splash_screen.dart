import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/utls/app_colors.dart';
import '../../../core/utls/app_images.dart';
import '../../login/views/login_screen.dart';
import 'package:animate_do/animate_do.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState(){
    super.initState();
    Future.delayed(Duration(
        seconds: 3
    ),
            (){
          Navigator.push(context, MaterialPageRoute(builder: (c){
            return LoginScreen();
          }));
        }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:AppColors.splalahcolor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            FadeIn(child:Image.asset(AppImages.splashimage,
          height: 253,
          width: 253,),
      ),

            Padding(
              padding: const EdgeInsets.only(top: 28),
              child: Text("Welcome To Pharmacy",
                style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
            )
          ],
        ),
      ),
    );
  }
}
