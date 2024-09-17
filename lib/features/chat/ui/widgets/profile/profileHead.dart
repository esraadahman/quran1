import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileHeader extends StatelessWidget {
  String? imagePath;
  ProfileHeader({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.4,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
            //  image: AssetImage('images/Rectangle9.png'),
            image:  NetworkImage(imagePath!),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height * 0.2,
          left: MediaQuery.of(context).size.width * 0.35,
          child: CircleAvatar(
            radius: 60.r,
            backgroundImage: AssetImage(imagePath!),
            //NetworkImage(""),
          ),
        ),
      ],
    );
  }
}
