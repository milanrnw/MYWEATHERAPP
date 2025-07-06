import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

class HourlyForecastCard extends StatefulWidget {
  const HourlyForecastCard({super.key});

  @override
  State<HourlyForecastCard> createState() => _HourlyForecastCardState();
}

class _HourlyForecastCardState extends State<HourlyForecastCard> {
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
                  Lottie.asset("assets/gif/lottie_cloudy.json",
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
