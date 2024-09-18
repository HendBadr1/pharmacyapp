import '../../../core/utls/app_images.dart';

class Product {
  final String image;
  final String text;
  final String price;
  final int? containerIndex;


  Product({
    required this.image,
    required this.price,
    required this.text,
    this.containerIndex,


  });

}

List<Product> besline=[
  Product(image: AppImages.cleanser, price: "600.0 EGP", text: "Beesline Instant Bright 5 In 1\nCleanser150 Ml"),
  Product(image: AppImages.cleanser2, price: "800.0 EGP", text: "Beesline 4 In 1 whitening cleanser\nMade with natural ingredients."),

];
List<Product> vichy=[
  Product(image: AppImages.vichy1image, price: "1000.0 EGP", text: "Vichy SLOW ÂGE Fluid Moisturiser\n Anti-aging creamMoisturizer Vichy "),
  Product(image: AppImages.vichy2image, price: "800.0 EGP", text: "Sunscreen Lotion Vichy cosmetics\nCream Factor deprotección solar"),
  Product(image: AppImages.vichy3image, price: "589.0 EGP", text: "Lotion Vichy Ideal Body \nSerum-Milk Skin,Healthy body,oil"),
  Product(image: AppImages.vichy4image, price: "1290.0 EGP", text: "Vichy Liftactiv Anti-Oxidant\nVitamin C Vichy Anti-aging cream")
];
List<Product> cerave=[
  Product(image: AppImages.cerave2, price: "1000.0 EGP", text: "Vichy SLOW ÂGE Fluid Moisturiser\nMoisturizer Vichy cosmetics"),
  Product(image: AppImages.ceraveimage, price: "800.0 EGP", text: "Sunscreen Lotion Factor de\nprotección solar"),

];