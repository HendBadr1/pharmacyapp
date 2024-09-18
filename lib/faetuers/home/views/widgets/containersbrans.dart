import 'package:flutter/cupertino.dart';


import '../../models/brand.dart';

class Brands extends StatefulWidget {
  const Brands({super.key, required this.index});
  final int index;
  @override
  State<Brands> createState() => _BrandsState();
}

class _BrandsState extends State<Brands> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 91,
      height: 77,
      decoration: BoxDecoration(
          color: Color(0xffECE7E7),
          borderRadius: BorderRadius.circular(10)
      ),
      child: Image.asset(brandcontainer[widget.index].image),
    );
  }
}
