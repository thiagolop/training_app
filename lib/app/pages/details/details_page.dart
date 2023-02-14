import 'package:flutter/material.dart';
import 'package:training_app/app/pages/details/widgets/details_model.dart';
import 'package:training_app/app/pages/details/widgets/splash_bar__details_widget.dart';
import '../../core/ui/styles/colors_app.dart' as color;
import '../controller/details_controller.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  DetailsController detailsController = DetailsController();
  List<DetailsModel> detailsList = [];

  @override
  void initState() {
    super.initState();
    _init();
  }

  _init() async {
    detailsList = await detailsController.getDetails();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              color.ColorsApp.gradientFrist,
              color.ColorsApp.gradientSecond,
            ],
            begin: const FractionalOffset(0.0, 0.4),
            end: Alignment.topRight,
          ),
        ),
        child: Column(
          children: [
            const SplashBarDetailsWidget(),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(90),
                  ),
                ),
                child: Column(children: [
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text('Circuit 1: Legs Toning', style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700, color: color.ColorsApp.circuitsColor)),
                      Row(
                        children: [
                          const SizedBox(width: 10),
                          Icon(Icons.loop, color: color.ColorsApp.loopColor, size: 25),
                          const SizedBox(width: 5),
                          Text('3 sets', style: TextStyle(fontSize: 18, color: color.ColorsApp.sersColor)),
                        ],
                      ),
                    ],
                  )
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
