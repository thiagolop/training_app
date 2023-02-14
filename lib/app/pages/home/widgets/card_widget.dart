import 'package:flutter/material.dart';
import '../../../core/ui/styles/colors_app.dart' as color;

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 220,
      decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [color.ColorsApp.gradientFrist.withOpacity(0.8), color.ColorsApp.gradientSecond.withOpacity(0.9)],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
          ),
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(15), topRight: Radius.circular(90), bottomLeft: Radius.circular(15), bottomRight: Radius.circular(15)),
          boxShadow: [
            BoxShadow(
              color: color.ColorsApp.gradientSecond.withOpacity(0.2),
              blurRadius: 20,
              offset: const Offset(5, 10),
            ),
          ]),
      child: Container(
        padding: const EdgeInsets.only(top: 25, left: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Next Workout', style: TextStyle(fontSize: 16, color: color.ColorsApp.homePageContainerTextSmall)),
            const SizedBox(height: 5),
            Text('Legs Toning', style: TextStyle(fontSize: 25, color: color.ColorsApp.homePageContainerTextSmall)),
            const SizedBox(height: 5),
            Text('and Glutes Workout', style: TextStyle(fontSize: 25, color: color.ColorsApp.homePageContainerTextSmall)),
            const SizedBox(height: 25),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  children: [
                    Icon(Icons.timer_outlined, color: color.ColorsApp.homePageContainerTextSmall, size: 20),
                    const SizedBox(width: 5),
                    Text('45 min', style: TextStyle(fontSize: 16, color: color.ColorsApp.homePageContainerTextSmall)),
                  ],
                ),
                SizedBox(width: MediaQuery.of(context).size.width / 2.7),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(60)),
                    boxShadow: [
                      BoxShadow(
                        color: color.ColorsApp.gradientFrist,
                        blurRadius: 20,
                        offset: const Offset(4, 8),
                      ),
                    ],
                  ),
                  child: Icon(Icons.play_circle_fill, color: color.ColorsApp.homePageContainerTextSmall, size: 60),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
