import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/ui/styles/colors_app.dart' as color;

class SplashBarDetailsWidget extends StatelessWidget {
  const SplashBarDetailsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 70, left: 30, right: 30),
      width: MediaQuery.of(context).size.width,
      height: 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  Get.back();
                },
                child: Icon(Icons.arrow_back_ios, size: 20, color: color.ColorsApp.secondPageIconColor),
              ),
              Icon(Icons.info_outline, size: 20, color: color.ColorsApp.secondPageIconColor),
            ],
          ),
          const SizedBox(height: 30),
          Text('Legs Toning', style: TextStyle(fontSize: 25, color: color.ColorsApp.secondPageTitleColor)),
          const SizedBox(height: 5),
          Text('and Glutes Workout', style: TextStyle(fontSize: 25, color: color.ColorsApp.secondPageTitleColor)),
          const SizedBox(height: 25),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 35,
                width: 90,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      color.ColorsApp.gradientSecond,
                      color.ColorsApp.gradientFrist,
                      color.ColorsApp.gradientSecond,
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(60)),
                ),
                child: Row(
                  children: [
                    const SizedBox(width: 10),
                    Icon(Icons.timer_outlined, color: color.ColorsApp.homePageContainerTextSmall, size: 20),
                    const SizedBox(width: 5),
                    Text('68 min', style: TextStyle(fontSize: 16, color: color.ColorsApp.homePageContainerTextSmall)),
                  ],
                ),
              ),
              Container(
                height: 35,
                width: 200,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      color.ColorsApp.gradientSecond,
                      color.ColorsApp.gradientFrist,
                      color.ColorsApp.gradientSecond,
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(60)),
                ),
                child: Row(
                  children: [
                    const SizedBox(width: 10),
                    Icon(Icons.handyman_outlined, color: color.ColorsApp.homePageContainerTextSmall, size: 20),
                    const SizedBox(width: 5),
                    Text('Resistent band, kettebell', style: TextStyle(fontSize: 16, color: color.ColorsApp.homePageContainerTextSmall)),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
