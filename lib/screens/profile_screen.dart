import 'package:codelandia_ui_challange/constants/color_constants.dart';
import 'package:codelandia_ui_challange/widgets/custom_profile_button.dart';
import 'package:codelandia_ui_challange/widgets/profile_follower_stack_view.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int tabIndex = 0;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        toolbarHeight: size.height * 0.1,
        elevation: 0,
        leading: Icon(
          Icons.language_outlined,
          color: AppColors.blackColor,
          size: 30,
        ),
        actions: [
          // Icon(
          //   Icons.linked_camera,
          //   color: AppColors.blackColor,
          // ),
          Container(
            height: 30,
            width: 30,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.contain,
                    image: NetworkImage(
                        'https://cdn-icons-png.flaticon.com/512/1384/1384031.png'))),
          ),
          const SizedBox(
            width: 20,
          ),
          Icon(
            Icons.segment,
            color: AppColors.blackColor,
            size: 30,
          ),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Togrul Agayev',
                          style: TextStyle(
                              color: AppColors.blackColor,
                              fontSize: 22,
                              fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: size.height * 0.005),
                          child: Row(
                            children: [
                              Text(
                                'togrulagayev',
                                style: TextStyle(
                                    color: AppColors.blackColor,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                width: size.width * 0.01,
                              ),
                              Container(
                                height: 20,
                                width: 70,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color:
                                        AppColors.greyColor.withOpacity(0.15)),
                                child: Text(
                                  'threads net',
                                  style: TextStyle(
                                      color: AppColors.greyColor, fontSize: 12),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    const CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(
                          'https://png.pngitem.com/pimgs/s/111-1114675_user-login-person-man-enter-person-login-icon.png'),
                    ),
                  ],
                ),
                SizedBox(
                  height: size.height * 0.01,
                ),
                Text(
                  ' Enter the Product Name as OneSignalNotificationServiceEse Swift that is ok).',
                  textAlign: TextAlign.left,
                  style: TextStyle(color: AppColors.blackColor),
                ),
                SizedBox(
                  height: size.height * 0.005,
                ),
                Row(
                  children: [
                    const ProfileFollowerStackView(
                        imageUrl1:
                            'https://cdn-icons-png.flaticon.com/512/4128/4128240.png',
                        imageUrl2:
                            'https://cdn.icon-icons.com/icons2/2643/PNG/512/male_man_boy_black_tone_avatar_people_person_icon_159369.png'),
                    SizedBox(
                      width: size.width * 0.005,
                    ),
                    const Text(
                      '9 follower',
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    CustomProfileButton(buttonName: 'Edit profile'),
                    CustomProfileButton(buttonName: 'Share profile'),
                  ],
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
              ],
            ),
          ),
          DefaultTabController(
            length: 2,
            child: Column(
              children: [
                TabBar(
                  onTap: (value) {
                    setState(() {
                      tabIndex = value;
                    });
                  },
                  indicatorColor: AppColors.blackColor,
                  tabs: [
                    Tab(
                        child: Text(
                      'Threads',
                      style: TextStyle(
                        color: tabIndex == 0
                            ? AppColors.blackColor
                            : AppColors.greyColor,
                      ),
                    )),
                    Tab(
                      child: Text(
                        'Replies',
                        style: TextStyle(
                          color: tabIndex == 1
                              ? AppColors.blackColor
                              : AppColors.greyColor,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: size.height * 0.5,
                  width: size.width,
                  child: const TabBarView(children: [
                    Center(
                      child: Text('You have\'n t post any threads yet'),
                    ),
                    Center(
                      child: Text('No replies yet'),
                    )
                  ]),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
