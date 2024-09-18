import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pharmacy/faetuers/home/views/widgets/recommendation.dart';
import 'package:pharmacy/faetuers/home/views/widgets/search_bar.dart';

import '../../../../core/utls/app_images.dart';
import '../../models/models.dart';
import '../search/searchproduct.dart';
import 'containersbrans.dart';

class HomeScreenBody extends StatefulWidget {
  const HomeScreenBody({Key? key}) : super(key: key);

  @override
  State<HomeScreenBody> createState() => _HomeScreenBodyState();
}

class _HomeScreenBodyState extends State<HomeScreenBody> {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: SearchBarWidget(),
          ),
          Image.asset(
            AppImages.bannerimage,
            fit: BoxFit.cover, // Ensure the image covers the entire space
          ),


          SizedBox(
            height: 180,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: products.length,
              itemBuilder: (BuildContext context, int index) {
                return recommendproduct(index: index);
              },
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(width: 9);
              },
            ),
          ),

          SizedBox(height: 50),
          Text(
            "Brands- we trust in",
            style: TextStyle(
              fontWeight: FontWeight.w500,
            ),
          ),
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 6,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4, crossAxisSpacing: 5, mainAxisSpacing: 17),
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          SearchProduct(containerIndex: index),
                    ),
                  );
                },
                child: Brands(index: index),
              );
            },
          ),
        ],
      ),
    );
  }
}
