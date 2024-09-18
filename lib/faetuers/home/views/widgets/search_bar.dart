import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import '../../../../core/utls/app_colors.dart';

class SearchBarWidget extends StatefulWidget {
  const SearchBarWidget({super.key});

  @override
  State<SearchBarWidget> createState() => _SearchBarWidgetState();
}

class _SearchBarWidgetState extends State<SearchBarWidget> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 39,
      child: TextFormField(
          decoration: InputDecoration(
            fillColor: AppColors.searchbar,
            filled: true,

            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: AppColors.grey,),
              borderRadius: BorderRadius.circular(10),

            ),

          ),
        ),
    );

  }
}
