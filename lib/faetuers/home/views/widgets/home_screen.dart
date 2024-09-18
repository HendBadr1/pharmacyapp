import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



import '../../../../core/utls/app_colors.dart';
import '../../../cart/views/cart_screen.dart';
import '../../../profile/views/profile_screen.dart';
import 'home_screen_body.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  List <Widget> screens =[
    HomeScreenBody(),
    ProfileScreen(),
    CartScreen(),
  ];
  int currentindex =0;
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: screens[currentindex],
        bottomNavigationBar:BottomNavigationBar(
            onTap: (bottomIndex){
              setState(() {
                currentindex=bottomIndex;

              });


            },
            currentIndex: currentindex,
            selectedItemColor: AppColors.blue,
            unselectedItemColor: Colors.grey,


            items: [
              BottomNavigationBarItem(icon:Icon(Icons.home),label: "Home"),
              BottomNavigationBarItem(icon:Icon(Icons.person),label: "Profile"),
              BottomNavigationBarItem(icon:Icon(Icons.shopping_cart),label: "Cart")
            ]) ,
      ),
    );
  }
}
