import 'package:flutter/material.dart';


import '../../../../core/utls/app_colors.dart';
import '../../models/clickbrand.dart';

import 'package:flutter/material.dart';


import '../../models/clickbrand.dart';

import 'package:flutter/material.dart';

import '../../models/clickbrand.dart';

class SearchProduct extends StatefulWidget {
  final int containerIndex;

  const SearchProduct({Key? key, required this.containerIndex}) : super(key: key);

  @override
  State<SearchProduct> createState() => _SearchProductState();
}

class _SearchProductState extends State<SearchProduct> {
  late List<Product> productsToShow;
  List<Product> searchList = [];

  @override
  void initState() {
    super.initState();
    // Set the products to display based on the container index
    switch (widget.containerIndex) {
      case 0:
        productsToShow = besline;
        break;
      case 1:
        productsToShow = vichy;
        break;
      case 2:
        productsToShow = cerave;
        break;
    // Add more cases if you have additional containers
      default:
      // Handle invalid index
        productsToShow = [];
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search Products'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 44,
                    child: TextFormField(
                      onChanged: (value) {
                        setState(() {
                          searchList = productsToShow
                              .where((element) => element.text.toLowerCase().contains(value.toLowerCase()))
                              .toList();
                        });
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        suffixIcon: searchList.isNotEmpty
                            ? IconButton(
                           icon: Icon(Icons.clear),
                          onPressed: () {
                            setState(() {
                              searchList.clear();
                            });
                          },
                        )
                            : null,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.separated(
              itemCount: searchList.isEmpty ? productsToShow.length : searchList.length,
              itemBuilder: (context, index) {
                final product = searchList.isEmpty ? productsToShow[index] : searchList[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 23),
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColors.searchbar,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          product.image,
                          width: 80,
                          height: 80,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(14.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                product.text,
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                product.price,
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  // Handle add to cart action
                                },
                                child: Center(
                                  child: Container(

                                    padding: EdgeInsets.symmetric(vertical: 6, horizontal: 12),
                                    child: Text(
                                      "Add to Cart",
                                      style: TextStyle(color: AppColors.white),
                                    ),
                                    decoration: BoxDecoration(
                                      color: AppColors.blue,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(
                  height: 28,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}


