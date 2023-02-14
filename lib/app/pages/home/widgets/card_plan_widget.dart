import 'package:flutter/material.dart';
import '../../../core/ui/styles/colors_app.dart' as color;

class CardPlanWidget extends StatelessWidget {
  const CardPlanWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(top: 20),
      child: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: const DecorationImage(
                image: AssetImage('assets/images/card.jpg'),
                fit: BoxFit.fill,
              ),
              boxShadow: [
                BoxShadow(
                  color: color.ColorsApp.gradientSecond.withOpacity(0.3),
                  blurRadius: 40,
                  offset: const Offset(8, 10),
                ),
                BoxShadow(
                  color: color.ColorsApp.gradientSecond.withOpacity(0.3),
                  blurRadius: 10,
                  offset: const Offset(-1, -5),
                ),
              ],
            ),
          ),
          Container(
            height: 200,
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.only(right: 200, bottom: 30),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: const DecorationImage(
                image: AssetImage('assets/images/figure.png'),
              ),
              boxShadow: [
                BoxShadow(
                  color: color.ColorsApp.gradientSecond.withOpacity(0.3),
                  blurRadius: 40,
                  offset: const Offset(8, 10),
                ),
                BoxShadow(
                  color: color.ColorsApp.gradientSecond.withOpacity(0.3),
                  blurRadius: 10,
                  offset: const Offset(-1, -5),
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 100,
            margin: const EdgeInsets.only(left: 150, top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('You ara doing great', style: TextStyle(fontSize: 18, color: color.ColorsApp.homePageDetail)),
                const SizedBox(height: 5),
                RichText(
                    text: TextSpan(children: [
                  TextSpan(text: 'Keep it up\n', style: TextStyle(fontSize: 16, color: color.ColorsApp.homePagePlanColor)),
                  TextSpan(text: 'stick to your plan', style: TextStyle(fontSize: 16, color: color.ColorsApp.homePagePlanColor)),
                ])),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
