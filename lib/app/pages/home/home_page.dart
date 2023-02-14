import 'package:flutter/material.dart';
import 'package:training_app/app/pages/home/widgets/card_plan_widget.dart';
import 'package:training_app/app/pages/home/widgets/card_widget.dart';
import 'package:training_app/app/pages/home/widgets/list_view_exercises_widget.dart';
import 'package:training_app/app/pages/home/widgets/sidebar.dart';
import 'package:training_app/app/pages/home/widgets/splash_bar_widget.dart';
import '../../core/ui/styles/colors_app.dart' as color;
import '../controller/home_controller.dart';
import 'modulo.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomeController homeController = HomeController();
  List<ExercisesPictures> exercisesList = [];

  @override
  void initState() {
    super.initState();
    _init();
  }

  _init() async {
    exercisesList = await homeController.getExercises();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color.ColorsApp.homePageBackground,
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(top: 70, left: 30, right: 30),
          child: Column(children: [
            const SplashBarWidget(),
            const SizedBox(height: 30),
            const Sidebar(),
            const SizedBox(height: 30),
            const CardWidget(),
            const SizedBox(height: 5),
            const CardPlanWidget(),
            Text('Area of focus', style: TextStyle(fontSize: 25, color: color.ColorsApp.homePageSubtitle, fontWeight: FontWeight.w500)),
            const SizedBox(height: 30),
            ListViewExercisesWidget(exercisesList: exercisesList, itemCount: exercisesList.length),
          ]),
        ),
      ),
    );
  }
}
