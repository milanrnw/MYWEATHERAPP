import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WindCard extends StatefulWidget {
  const WindCard({super.key});

  @override
  State<WindCard> createState() => _WindCardState();
}

class _WindCardState extends State<WindCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60.w,
      height: 110.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Column(
                children: [
                  Image.asset("assets/icons/wind_glassmorphism.png",
                      width: 52, height: 40),
                  Text(
                    "25°",
                    style: TextStyle(
                      fontFamily: "MadimiOne",
                      fontWeight: FontWeight.w300,
                      fontSize: 20.sp,
                      color: Color(0XFF3C4042),
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    "8 am",
                    style: TextStyle(
                      fontFamily: "MadimiOne",
                      fontWeight: FontWeight.w300,
                      fontSize: 14.sp,
                      color: Color(0XFF3C4042).withValues(alpha: 0.5),
                    ),
                  ),
                ],
              ),
              
            ],
          )
        ],
      ),
    );
  }
}