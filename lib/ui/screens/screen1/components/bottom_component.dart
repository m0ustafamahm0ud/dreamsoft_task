import 'package:flutter/material.dart';
import 'package:task_dreamsoft/utils/app_images.dart';

class BottomComponent extends StatelessWidget {
  const BottomComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: Image.asset(
        AppImages.image5,
        height: double.infinity,
        fit: BoxFit.cover,
      ),
    );
  }
}
