import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myweatherapp/widgets/hourly_forecast_card.dart';

class HomescreenDataCard extends StatelessWidget {
  const HomescreenDataCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: PageView(
        scrollDirection: Axis.vertical,
        children: [
          /// First horizontal card list
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Align(
                  alignment: AlignmentDirectional.topCenter,
                  child: Text(
                    "Temperature",
                    style: TextStyle(
                      fontFamily: "MadimiOne",
                      fontWeight: FontWeight.w300,
                      fontSize: 16.sp,
                      color: const Color(0XFF3C4042),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 100.h,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  itemCount: 10,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: HourlyForecastCard(),
                  ),
                ),
              ),
            ],
          ),

          /// Second horizontal card list
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Text(
                  "Wind speed",
                  style: TextStyle(
                    fontFamily: "MadimiOne",
                    fontWeight: FontWeight.w300,
                    fontSize: 24.sp,
                    color: const Color(0XFF3C4042),
                  ),
                ),
              ),
              SizedBox(
                height: 100.h,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  itemCount: 7,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: HourlyForecastCard(),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
