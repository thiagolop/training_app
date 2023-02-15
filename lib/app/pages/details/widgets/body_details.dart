import 'package:flutter/material.dart';
import 'package:training_app/app/pages/details/widgets/divider_pontilhado_widget.dart';
import '../../../core/ui/styles/colors_app.dart' as color;
import 'details_model.dart';

class BodyDetails extends StatefulWidget {
  final int itemCount;
  final List<DetailsModel> vidioList;

  final Function(String vidio) onTap;

  const BodyDetails({
    Key? key,
    required this.itemCount,
    required this.vidioList,
    required this.onTap,
  }) : super(key: key);

  @override
  State<BodyDetails> createState() => _BodyDetailsState();
}

class _BodyDetailsState extends State<BodyDetails> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(90),
          ),
        ),
        child: Column(
          children: [
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
            ),
            Expanded(
              child: ListView.builder(
                itemCount: widget.itemCount,
                itemBuilder: (context, int index) {
                  final details = widget.vidioList[index];
                  return GestureDetector(
                    onTap: () => widget.onTap(details.video),
                    child: SizedBox(
                      height: 155,
                      width: 200,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Container(
                                  height: 100,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                      image: NetworkImage(details.img),
                                      onError: (exception, stackTrace) {
                                        debugPrint('Error: $exception');
                                      },
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(details.title, style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: color.ColorsApp.circuitsColor)),
                                  const SizedBox(height: 5),
                                  Text(details.description, style: TextStyle(fontSize: 15, color: color.ColorsApp.circuitsColor)),
                                  const SizedBox(height: 5),
                                  Row(
                                    children: [
                                      Icon(Icons.timer, color: color.ColorsApp.circuitsColor, size: 20),
                                      const SizedBox(width: 5),
                                      Text(details.duration, style: TextStyle(fontSize: 15, color: color.ColorsApp.circuitsColor)),
                                    ],
                                  ),
                                  Divider(color: color.ColorsApp.circuitsColor, thickness: 1, height: 20)
                                ],
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: color.ColorsApp.loopColor,
                                    borderRadius: const BorderRadius.all(Radius.circular(6)),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                    child: Text(
                                      "${details.titleShort} rest",
                                      style: TextStyle(fontSize: 15, color: color.ColorsApp.secondPageIconColor),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Flexible(child: DividerPontilhado(color: color.ColorsApp.gradientFrist)),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
