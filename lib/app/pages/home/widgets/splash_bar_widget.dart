import 'package:flutter/material.dart';
import '../../../core/ui/styles/colors_app.dart' as color;

class SplashBarWidget extends StatelessWidget {
  const SplashBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Training', style: TextStyle(fontSize: 30, color: color.ColorsApp.homePageTitle, fontWeight: FontWeight.w700)),
        Expanded(child: Container()),
        Icon(Icons.arrow_back_ios, color: color.ColorsApp.homePageTitle, size: 20),
        const SizedBox(width: 15),
        Icon(Icons.calendar_today_outlined, color: color.ColorsApp.homePageTitle, size: 20),
        const SizedBox(width: 15),
        Icon(Icons.arrow_forward_ios, color: color.ColorsApp.homePageTitle, size: 20),
      ],
    );
  }
}
