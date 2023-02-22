import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:task_dreamsoft/ui/widgets/car_card.dart';

class CarsGridViewComponent extends StatelessWidget {
  const CarsGridViewComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      padding: const EdgeInsets.symmetric(horizontal: 5),
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 1,
          mainAxisExtent: 210,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5),
      itemCount: 10,
      itemBuilder: (BuildContext ctx, index) {
        return FadeIn(
            delay: Duration(milliseconds: index * 50), child: const CarCard());
      },
    );
  }
}
