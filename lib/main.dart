import 'package:flutter/material.dart';
import 'package:pharmacy/faetuers/login/views/register.dart';
import 'package:pharmacy/faetuers/splash/views/splash_screen.dart';

void main(){



  runApp(PharmacyApp());
  
}
class PharmacyApp extends StatelessWidget {

  const PharmacyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:  false,
      home:SplashScreen(),
    );
  }
}
