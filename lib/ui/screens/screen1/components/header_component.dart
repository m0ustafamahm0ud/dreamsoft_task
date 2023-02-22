import 'package:flutter/material.dart';
import 'package:task_dreamsoft/utils/app_images.dart';

class HeaderComponent extends StatelessWidget {
  const HeaderComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: Image.asset(AppImages.image6),
    );
  }
}
