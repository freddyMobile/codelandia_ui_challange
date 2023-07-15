import 'package:codelandia_ui_challange/constants/color_constants.dart';
import 'package:flutter/material.dart';

class CustomProfileButton extends StatelessWidget {
  final String buttonName;
  const CustomProfileButton({super.key, required this.buttonName});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.035,
      width: size.width * 0.43,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey, width: 1)),
      child: Text(
        buttonName,
        style:
            TextStyle(color: AppColors.blackColor, fontWeight: FontWeight.bold),
      ),
    );
  }
}
