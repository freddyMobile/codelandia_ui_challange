import 'package:flutter/material.dart';

class SearchAvatarStack extends StatelessWidget {
  final String imageUrl1;
  final String imageUrl2;
  final String imageUrl3;
  const SearchAvatarStack(
      {super.key,
      required this.imageUrl1,
      required this.imageUrl2,
      required this.imageUrl3});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: 55,
      child: Stack(
        children: [
          Positioned(
            left: 30,
            child: CircleAvatar(
              backgroundImage: NetworkImage(imageUrl1),
              radius: 10,
            ),
          ),
          Positioned(
            top: 10,
            left: 10,
            child: CircleAvatar(
              radius: 8,
              backgroundImage: NetworkImage(imageUrl2),
            ),
          ),
          Positioned(
            top: 25,
            left: 30,
            child: CircleAvatar(
              radius: 5,
              backgroundImage: NetworkImage(imageUrl3),
            ),
          ),
        ],
      ),
    );
  }
}
