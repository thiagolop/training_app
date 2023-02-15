import 'package:flutter/material.dart';

class DividerPontilhado extends StatelessWidget {
  const DividerPontilhado({
    Key? key,
    required this.color,
  }) : super(key: key);
  final Color color;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, BoxConstraints boxConstraints) {
      final double boxWith = boxConstraints.constrainWidth();
      const double hashWeigth = 6.0;
      final int dashCount = (boxWith / (2 * hashWeigth)).floor();

      return Flex(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: Axis.horizontal,
          children: List.generate(dashCount, (_) {
            return Column(
              children: [
                SizedBox(
                  height: 1,
                  width: hashWeigth,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: color,
                    ),
                  ),
                ),
              ],
            );
          }));
    });
  }
}
