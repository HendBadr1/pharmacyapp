import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pharmacy/faetuers/home/views/widgets/shipping_screen.dart';

import '../../../core/utls/app_colors.dart';
import '../../home/models/models.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  List<ProductModels> productsInCart = products
      .where((productModels) => productModels.addToCart == true)
      .toList(); // List to hold products in the cart

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Cart",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context); // Navigate back to the previous screen
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Column(children: [
        Expanded(
          child: ListView.builder(
            itemCount: productsInCart.length,
            itemBuilder: (context, index) {
              final product = productsInCart[index];
              return ListTile(
                leading: Image.asset(
                  product
                      .image, // Assuming your product model has an 'image' property
                  width: 80,
                  height: 80,
                ),
                title: Text(productsInCart[index].text),
                subtitle: Text(productsInCart[index].price),
                trailing: GestureDetector(
                  onTap: () {
                    setState(() {
                      productsInCart.removeAt(index);
                    });
                  },
                  child: Icon(Icons.remove_shopping_cart),
                ),
              );
            },
          ),
        ),
        Container(
          child: Center(
            child: Text(
              "Checkout",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 24,
              ),
            ),
          ),
          width: double.infinity,
          height: 41,
          decoration: BoxDecoration(
            color: AppColors.blue,
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (c){
              return ShippingScreen();
            }));
          },
          child: Container(
            width: 300,
            height: 44,

              child: Text(
                "Checkout",
                style: TextStyle(color: AppColors.white, fontSize: 20),
              ),
            ),
        ),

      ]),
    );
  }
}
