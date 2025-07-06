import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainWeatherData extends StatelessWidget {
  const MainWeatherData({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: "SUNNY ",
        style: TextStyle(
          fontFamily: "MadimiOne",
          fontSize: 24.sp,
          fontWeight: FontWeight.normal,
          color: Color(0XFF3C4042),
        ),
        children: [
          TextSpan(
            text: "26°C",
            style: TextStyle(
              fontFamily: "MadimiOne",
              fontWeight: FontWeight.normal,
              fontSize: 32.sp,
              color: Color(0XFF3C4042),
            ),
          ),
        ],
      ),
    );
  }
}
