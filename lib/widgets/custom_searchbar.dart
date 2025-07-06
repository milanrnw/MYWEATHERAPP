import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class CustomSearchbar extends StatelessWidget {
  const CustomSearchbar({super.key});

  @override
  Widget build(BuildContext context) {
    Offset distance = Offset(2, 2);
    double blur = 8;

    return Container(
      width: 328.w,
      height: 54.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
              blurRadius: blur,
              offset: distance,
              //color: Colors.black,
              color: Colors.black.withValues(alpha: 0.80),
              inset: true),
          BoxShadow(
              blurRadius: blur,
              offset: -distance,
              color: Colors.white,
              inset: true),
        ],
      ),
      child: Center(
        child: TextField(
          style: TextStyle(
            fontFamily: "MadimiOne",
            fontWeight: FontWeight.w400,
            fontSize: 16.sp,
          ),
          decoration: const InputDecoration(
            contentPadding: EdgeInsets.only(left: 16),
            hintText: "ENTER CITY",
            border: InputBorder.none,
            hintStyle: TextStyle(color: Color(0XFFA1A1A1)),
          ),
        ),
      ),
    );
  }
}
