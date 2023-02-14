import 'package:flutter/material.dart';
import '../../../core/ui/styles/colors_app.dart' as color;
import '../modulo.dart';

class ListViewExercisesWidget extends StatelessWidget {
  final int itemCount;
  final List<ExercisesPictures> exercisesList;

  const ListViewExercisesWidget({
    Key? key,
    required this.itemCount,
    required this.exercisesList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 300,
          crossAxisSpacing: 25,
          mainAxisSpacing: 25,
        ),
        itemCount: exercisesList.length,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          final modulo = exercisesList[index];
          return Container(
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                image: AssetImage(modulo.img),
                fit: BoxFit.cover,
              ),
              boxShadow: [
                BoxShadow(
                  color: color.ColorsApp.gradientSecond.withOpacity(0.1),
                  blurRadius: 3,
                  offset: const Offset(5, 5),
                ),
                BoxShadow(
                  color: color.ColorsApp.gradientSecond.withOpacity(0.9),
                  blurRadius: 9,
                  offset: const Offset(-5, -5),
                ),
              ],
            ),
            child: Center(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: color.ColorsApp.homePageBackground.withOpacity(0.5),
                  ),
                  child: Text(
                    modulo.title,
                    style: TextStyle(fontSize: 25, color: color.ColorsApp.homePageDetail),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
