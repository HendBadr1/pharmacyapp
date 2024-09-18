import 'package:flutter/material.dart';
import 'package:pharmacy/faetuers/home/views/widgets/home_screen.dart';
import 'package:pharmacy/faetuers/home/views/widgets/home_screen_body.dart';



import '../../../../core/utls/app_images.dart';

class ConfirmScreen extends StatefulWidget {
  const ConfirmScreen({super.key});

  @override
  State<ConfirmScreen> createState() => _ConfirmScreenState();
}

class _ConfirmScreenState extends State<ConfirmScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              SizedBox(height: 80,),
              Container(
                margin: EdgeInsetsDirectional.all(50),



                child:



                  Container(


                      child: Image.asset(AppImages.confirm),



                  )














              ),
             
              Container(



                child: Text("Registration\n   success",style: TextStyle(fontWeight: FontWeight.bold,color: Color(0xff4C69B2),fontSize: 30),),
              ),
              SizedBox(height: 100,),
              Container(
                width:348 ,
                height:39 ,
                decoration: BoxDecoration(
                  color: Color(0xff4C69B2),
                  borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                child: TextButton(
                  onPressed: (){
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (C) {
    return HomeScreen();},
    ) );
                  },
                  child: Text("Next",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                ),
                
              )
            ],
            
          ),
        ),
      ),
    );
  }
}
