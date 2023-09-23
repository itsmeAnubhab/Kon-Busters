import 'package:flutter/material.dart';

import '../config/app_images.dart';
import '../styles/app_texts.dart';

class PostItems extends StatelessWidget {
  final String user;
  const PostItems({super.key, required this.user});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 8,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                AppImages.picUser1,
                width: 40,
                height: 40,
              ),
              SizedBox(
                width: 16,
              ),
              Text(
                user,
                style: AppText.subtitle3,
              ),
              SizedBox(
                width: 16,
              ),
            ],
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            "Here the details of the insta page searched will be kept",
          )
        ],
      ),
    );
  }
}
