

import '../../../core/utls/app_images.dart';
import 'clickbrand.dart';

class ProductModels {
  final String image;
  final String text;
  final String price;
  bool addToCart;



  ProductModels({
    required this.image,
    required this.price,
    required this.text,
    this.addToCart=false
  });

}

List<ProductModels> products=[
  ProductModels(image: AppImages.ceraveimage, price: "600 EGP", text: "Cerave lotion"),
  ProductModels(image: AppImages.paulaimage, price: "750 EGP", text: "Paula’s choice"),
  ProductModels(image: AppImages.demraimage, price: "54.00 EGP", text: "Dimra 500Mg"),
  ProductModels(image: AppImages.demraimage, price: "54.00 EGP", text: "Dimra 500Mg")
];


List<Product> cart = [

] ;

