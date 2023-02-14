import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/ui/styles/colors_app.dart' as color;
import '../../details/details_page.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(() => const DetailsPage());
      },
      child: Row(
        children: [
          Text('Training', style: TextStyle(fontSize: 20, color: color.ColorsApp.homePageSubtitle, fontWeight: FontWeight.w700)),
          Expanded(child: Container()),
          Text('Details', style: TextStyle(fontSize: 20, color: color.ColorsApp.homePageDetail)),
          const SizedBox(width: 10),
          Icon(Icons.arrow_forward, color: color.ColorsApp.homePageIcons, size: 20),
        ],
      ),
    );
  }
}
