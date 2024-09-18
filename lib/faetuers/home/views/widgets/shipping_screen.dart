import 'package:flutter/material.dart';

import '../../../../core/utls/app_colors.dart';

class ShippingScreen extends StatelessWidget {
  const ShippingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Enter Your Shipping Deatils"),
        leading: Icon(Icons.arrow_back),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text("FirstName",style: TextStyle(color: AppColors.grey),),

              Container(
                width: 341,
                height: 39,
                decoration: BoxDecoration(
                  color: Color(0xffFAF9F9),


                  border: Border.all(

                    color: Color(0xfC4BFBF),
                    width: 3,

                  ),


                  borderRadius: BorderRadius.all(Radius.circular(10),),



                ),
                child: TextFormField(
                  decoration: InputDecoration(
             
                    hintStyle: TextStyle(color: Color(0xffC4BFBF)),
                    border: InputBorder.none,

                  ),
                ),
              ),
              SizedBox(height: 20,),
              Text("FirstName",style: TextStyle(color: AppColors.grey),),
              Container(
                width: 341,
                height: 39,
                decoration: BoxDecoration(
                  color: Color(0xffFAF9F9),


                  border: Border.all(

                    color: Color(0xfC4BFBF),
                    width: 3,

                  ),


                  borderRadius: BorderRadius.all(Radius.circular(10),),



                ),
                child: TextFormField(
                  decoration: InputDecoration(

                    hintStyle: TextStyle(color: Color(0xffC4BFBF)),
                    border: InputBorder.none,

                  ),
                ),
              ),

              SizedBox(height: 20,),
              Text("City",style: TextStyle(color: AppColors.grey),),
              Container(
                width: 341,
                height: 39,
                decoration: BoxDecoration(
                  color: Color(0xffFAF9F9),


                  border: Border.all(

                    color: Color(0xfC4BFBF),
                    width: 3,

                  ),


                  borderRadius: BorderRadius.all(Radius.circular(10),),



                ),
                child: TextFormField(
                  decoration: InputDecoration(

                    hintStyle: TextStyle(color: Color(0xffC4BFBF)),
                    border: InputBorder.none,

                  ),
                ),

              ),

              
            ],
          ),
        ),
      ),

    );
  }
}
