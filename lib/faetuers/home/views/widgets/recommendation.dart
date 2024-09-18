import 'package:flutter/cupertino.dart';

import '../../../../core/utls/app_colors.dart';
import '../../models/models.dart';

class recommendproduct extends StatefulWidget {
  const recommendproduct({super.key, required this.index});
  final int index;
  @override
  State<recommendproduct> createState() => _recommendproductState();
}

class _recommendproductState extends State<recommendproduct> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          top: 50
      ),
      child: Container(
        width: 128,
        height: 171,
        decoration: BoxDecoration(
            border: Border.all(
                color: AppColors.searchbar
            ),
            borderRadius: BorderRadius.circular(10)
        ),
        child: Column(

          children: [
            Image.asset(products[widget.index].image,height: 65,),
            Text(products[widget.index].text,),
            Text(products[widget.index].price),
            GestureDetector(
              onTap: (){
                setState(() {
                  products[widget.index].addToCart=!products[widget.index].addToCart;
                });
              },
              child: Container(
                width: 127,
                height: 22,
                decoration: BoxDecoration(
                    color: AppColors.blue,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)
                    )
                ),
                child: Text("Add to cart",textAlign: TextAlign.center,style: TextStyle(
                    color: AppColors.white
                ),),
              ),
            )

          ],
        ),
      ),
    );
  }
}
