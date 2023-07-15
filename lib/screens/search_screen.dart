import 'package:codelandia_ui_challange/constants/color_constants.dart';
import 'package:codelandia_ui_challange/widgets/post_widget.dart';
import 'package:codelandia_ui_challange/widgets/search_avatar_stack.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        toolbarHeight: size.height * 0.1,
        backgroundColor: AppColors.whiteColor,
        elevation: 0,
        leading: Icon(
          Icons.arrow_back,
          color: AppColors.blackColor,
        ),
        actions: [
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
          Padding(
            padding: EdgeInsets.only(
                top: size.height * 0.034, bottom: size.height * 0.034),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(width: 2, color: AppColors.blackColor)),
              child: Icon(
                Icons.more_horiz,
                color: AppColors.blackColor,
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
      body: ListView(
        children: const [
          PostWidget(
              imageUrl1:
                  'https://imgv3.fotor.com/images/gallery/Realistic-Male-Profile-Picture.jpg',
              imageUrl2:
                  'https://images.unsplash.com/photo-1529665253569-6d01c0eaf7b6?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1385&q=80',
              imageUrl3:
                  'https://images.unsplash.com/photo-1502877338535-766e1452684a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1472&q=80',
              imageUrl:
                  'https://images.unsplash.com/photo-1483726234545-481d6e880fc6?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80',
              date: '2day',
              likesCount: '35.1 K likes',
              personName: 'zuck',
              repliesCount: '19,884 replies',
              message:
                  'I apologize for the confusioirect siblings in a Row wi height of the text'),
          PostWidget(
              imageUrl1:
                  'https://imgv3.fotor.com/images/gallery/Realistic-Male-Profile-Picture.jpg',
              imageUrl2:
                  'https://images.unsplash.com/photo-1529665253569-6d01c0eaf7b6?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1385&q=80',
              imageUrl3:
                  'https://images.unsplash.com/photo-1502877338535-766e1452684a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1472&q=80',
              imageUrl:
                  'https://images.unsplash.com/photo-1483726234545-481d6e880fc6?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80',
              date: '4day',
              likesCount: '25.1 K likes',
              personName: 'qelender',
              repliesCount: '21,884 replies',
              message:
                  'In this code, Positioned.fill forces the Column with the text to take the entire space of the Stack, and then the grey line (Container) is also a part of that Stack, which means it will have the same height as the text. Adjust the padding value to make sure your text is displayed correctly.'),
          PostWidget(
              imageUrl1:
                  'https://imgv3.fotor.com/images/gallery/Realistic-Male-Profile-Picture.jpg',
              imageUrl2:
                  'https://images.unsplash.com/photo-1529665253569-6d01c0eaf7b6?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1385&q=80',
              imageUrl3:
                  'https://images.unsplash.com/photo-1502877338535-766e1452684a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1472&q=80',
              imageUrl:
                  'https://images.unsplash.com/photo-1483726234545-481d6e880fc6?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80',
              date: '6day',
              likesCount: '45.1 K likes',
              personName: 'niko_3468',
              repliesCount: '3 replies',
              message:
                  'In thext to take the entire space of the Stack, and then the grey line (Container) is also a part of that Stack, which meanse entire space of the Stack, and then the grey line (Container) is also a part of that Stack, which meane entire space of the Stack, and then the grey line (Container) is also a part of that Stack, which meane entire space of the Stack, and then the grey line (Container) is also a part of that Stack, which mean it will have the same height as the text. Adjust the padding value to make sure your text is displayed correctly.'),
          PostWidget(
              imageUrl1:
                  'https://imgv3.fotor.com/images/gallery/Realistic-Male-Profile-Picture.jpg',
              imageUrl2:
                  'https://images.unsplash.com/photo-1529665253569-6d01c0eaf7b6?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1385&q=80',
              imageUrl3:
                  'https://images.unsplash.com/photo-1502877338535-766e1452684a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1472&q=80',
              imageUrl:
                  'https://images.unsplash.com/photo-1483726234545-481d6e880fc6?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80',
              date: '4day',
              likesCount: '25.1 K likes',
              personName: 'qelender',
              repliesCount: '21,884 replies',
              message:
                  'In this code, Positioned.fill forces the Column with the text to take the entire space of the Stack, and then the grey line (Container) is also a part of that Stack, which means it will have the same height as the text. Adjust the padding value to make sure your text is displayed correctly.'),
          PostWidget(
              imageUrl1:
                  'https://imgv3.fotor.com/images/gallery/Realistic-Male-Profile-Picture.jpg',
              imageUrl2:
                  'https://images.unsplash.com/photo-1529665253569-6d01c0eaf7b6?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1385&q=80',
              imageUrl3:
                  'https://images.unsplash.com/photo-1502877338535-766e1452684a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1472&q=80',
              imageUrl:
                  'https://images.unsplash.com/photo-1483726234545-481d6e880fc6?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80',
              date: '2day',
              likesCount: '35.1 K likes',
              personName: 'memati',
              repliesCount: '19,884 replies',
              message:
                  'I apologize for the confusioirect siblings in a Row wi height of the text'),
          PostWidget(
              imageUrl1:
                  'https://imgv3.fotor.com/images/gallery/Realistic-Male-Profile-Picture.jpg',
              imageUrl2:
                  'https://images.unsplash.com/photo-1529665253569-6d01c0eaf7b6?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1385&q=80',
              imageUrl3:
                  'https://images.unsplash.com/photo-1502877338535-766e1452684a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1472&q=80',
              imageUrl:
                  'https://images.unsplash.com/photo-1483726234545-481d6e880fc6?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80',
              date: '2day',
              likesCount: '35.1 K likes',
              personName: 'alone_boy',
              repliesCount: '19,884 replies',
              message:
                  'I apologize for the confusioirect siblings in a Row wi height of the text'),
          PostWidget(
              imageUrl1:
                  'https://imgv3.fotor.com/images/gallery/Realistic-Male-Profile-Picture.jpg',
              imageUrl2:
                  'https://images.unsplash.com/photo-1529665253569-6d01c0eaf7b6?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1385&q=80',
              imageUrl3:
                  'https://images.unsplash.com/photo-1502877338535-766e1452684a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1472&q=80',
              imageUrl:
                  'https://images.unsplash.com/photo-1483726234545-481d6e880fc6?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80',
              date: '2day',
              likesCount: '35.1 K likes',
              personName: 'hatter_patter',
              repliesCount: '19,884 replies',
              message:
                  'I apologize for the confusioirect siblings in a Row wi height of the text'),
        ],
      ),
    );
  }
}
