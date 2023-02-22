import 'package:flutter/cupertino.dart';
import 'package:task_dreamsoft/ui/widgets/car_card.dart';

class RelatedCarsComponent extends StatelessWidget {
  const RelatedCarsComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.separated(
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(
            width: 4,
          );
        },
        itemBuilder: (BuildContext context, int index) {
          return const CarCard();
        },
      ),
    );
  }
}
