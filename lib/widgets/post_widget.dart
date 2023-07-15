import 'package:codelandia_ui_challange/widgets/search_avatar_stack.dart';
import 'package:flutter/material.dart';

import '../constants/color_constants.dart';

class PostWidget extends StatelessWidget {
  final String imageUrl1;
  final String imageUrl2;
  final String imageUrl3;
  final String imageUrl;
  final String personName;
  final String date;
  final String message;
  final String repliesCount;
  final String likesCount;

  const PostWidget(
      {super.key,
      required this.likesCount,
      required this.date,
      required this.message,
      required this.personName,
      required this.repliesCount,
      required this.imageUrl,
      required this.imageUrl1,
      required this.imageUrl2,
      required this.imageUrl3});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Column(
        children: [
          SizedBox(
            width: size.width,
            child: IntrinsicHeight(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(imageUrl),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Expanded(
                        child: Container(
                          width: 1,
                          color: AppColors.greyColor,
                          //height: 40,
                        ),
                      ),
                      SearchAvatarStack(
                        imageUrl1: imageUrl1,
                        imageUrl2: imageUrl2,
                        imageUrl3: imageUrl3,
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: size.width * 0.85,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  personName,
                                  style: TextStyle(
                                      color: AppColors.blackColor,
                                      fontWeight: FontWeight.w600),
                                ),
                                const Icon(
                                  Icons.verified,
                                  color: Colors.blueAccent,
                                  size: 16,
                                ),
                              ],
                            ),

                            //Spacer(),
                            Row(
                              children: [
                                Text(
                                  date,
                                  style: TextStyle(color: AppColors.greyColor),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Icon(Icons.more_horiz),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: size.width * 0.85,
                        child: Text(message),
                      ),
                      SizedBox(
                        height: size.height * 0.01,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Icon(Icons.favorite_border),
                          SizedBox(
                            width: 15,
                          ),
                          Icon(Icons.comment_outlined),
                          SizedBox(
                            width: 15,
                          ),
                          Icon(Icons.share),
                          SizedBox(
                            width: 15,
                          ),
                          Icon(Icons.telegram),
                        ],
                      ),
                      SizedBox(
                        height: size.height * 0.01,
                      ),
                      Row(
                        children: [
                          Text(
                            repliesCount,
                            style: TextStyle(color: AppColors.greyColor),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            likesCount,
                            style: TextStyle(color: AppColors.greyColor),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: size.height * 0.01,
          ),
          Container(
            height: 1,
            width: size.width,
            color: AppColors.greyColor.withOpacity(0.3),
          ),
        ],
      ),
    );
  }
}
