import 'package:codelandia_ui_challange/constants/color_constants.dart';
import 'package:flutter/material.dart';

class ProfileFollowerStackView extends StatelessWidget {
  final String imageUrl1;
  final String imageUrl2;
  const ProfileFollowerStackView(
      {super.key, required this.imageUrl1, required this.imageUrl2});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      width: 40,
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(
                /* 'https://cdn-icons-png.flaticon.com/512/4128/4128240.png'*/ imageUrl1),
            radius: 10,
          ),
          Positioned(
            left: 10,
            //bottom: 7,
            child: Container(
              height: 25,
              width: 25,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: AppColors.whiteColor),
              child: CircleAvatar(
                backgroundColor: Colors.white,
                //radius: 10,
                backgroundImage: NetworkImage(
                    /* 'https://cdn.icon-icons.com/icons2/2643/PNG/512/male_man_boy_black_tone_avatar_people_person_icon_159369.png'*/ imageUrl2),
                radius: 10,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
