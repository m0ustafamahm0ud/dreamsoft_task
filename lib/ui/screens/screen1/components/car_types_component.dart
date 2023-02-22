import 'package:flutter/material.dart';
import 'package:task_dreamsoft/utils/app_images.dart';
import 'package:task_dreamsoft/utils/app_theme.dart';

class CarTypesComponent extends StatelessWidget {
  const CarTypesComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 20),
        itemCount: 10,
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(width: 5);
        },
        itemBuilder: (BuildContext context, int index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(width: 1, color: Colors.red)),
                child: const CircleAvatar(
                  backgroundImage: AssetImage(
                    AppImages.image1,
                  ),
                  radius: 28,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'جيلي',
                style: MyAppTheme.materialTheme.textTheme.titleSmall,
              ),
            ],
          );
        },
      ),
    );
  }
}
