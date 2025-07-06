import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:myweatherapp/widgets/custom_searchbar.dart';
import 'package:myweatherapp/widgets/homescreen_data_card.dart';
import 'package:myweatherapp/widgets/hourly_forecast_card.dart';
import 'package:myweatherapp/widgets/main_weather_data.dart';

class HomeScreen extends StatefulWidget {
  final String? cityName;
  const HomeScreen({super.key, this.cityName});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final topPadding = MediaQuery.of(context).padding.top;
    SizedBox(height: topPadding);

    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Color(0XFFE7EAEF),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 60),
                child: Text(widget.cityName ?? "Ahmedabad",
                    style: GoogleFonts.oxanium(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w500,
                      color: Color(0XFF3C4042),
                    )),
              ),
            ],
          ),
          SizedBox(
            height: 56,
          ),
          Lottie.asset("assets/gif/lottie_sunny.json",
              width: 410.w, height: 410.h, fit: BoxFit.cover),
          SizedBox(
            height: 64,
          ),
          MainWeatherData(),
          SizedBox(
            height: 18,
          ),
          HomescreenDataCard(),
          SizedBox(
            height: 14,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                CustomSearchbar(),
                SizedBox(
                  width: 10.w,
                ),
                SvgPicture.asset("assets/svgs/swipe_menu.svg"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
