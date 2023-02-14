import 'package:flutter/material.dart';
import '../../../core/ui/styles/colors_app.dart' as color;

class Sidebar extends StatelessWidget {
  const Sidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Training', style: TextStyle(fontSize: 20, color: color.ColorsApp.homePageSubtitle, fontWeight: FontWeight.w700)),
        Expanded(child: Container()),
        Text('Details', style: TextStyle(fontSize: 20, color: color.ColorsApp.homePageDetail)),
        const SizedBox(width: 10),
        Icon(Icons.arrow_forward, color: color.ColorsApp.homePageIcons, size: 20),
      ],
    );
  }
}
