import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:task_dreamsoft/bindings/screen2/screen2_binding.dart';
import 'package:task_dreamsoft/ui/screens/secreen2/screen_2.dart';

import '../../utils/app_colors.dart';
import '../../utils/app_icons.dart';
import '../../utils/app_images.dart';

class CarCard extends StatelessWidget {
  const CarCard({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> titles = ['السعر', 'سنة الصنع', 'كم', 'مكفولة لـ'];
    List<String> content = ['12.700', '2019', '20000', '2021'];
    List<String> icons = [
      AppIcons.price,
      AppIcons.ad2,
      AppIcons.km,
      AppIcons.ad4
    ];
    return GestureDetector(
      onTap: () => Get.to(() => const Screen2(), binding: Screen2Binding()),
      child: Container(
        // height: 180,
        width: 180,
        alignment: Alignment.center,
        padding: const EdgeInsets.only(top: 5),
        decoration: BoxDecoration(
          color: AppColors.primary.withOpacity(0.1),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "جي أم سي | يوكن | الفئة الرابعة",
              maxLines: 2,
              textAlign: TextAlign.center,
              style: TextStyle(overflow: TextOverflow.ellipsis),
            ),
            const Spacer(),
            Image.asset(
              AppImages.image1,
              fit: BoxFit.fitHeight,
              width: double.infinity,
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(
                titles.length,
                (index) => Expanded(
                  flex: 1,
                  child: Container(
                    decoration: BoxDecoration(
                        color: AppColors.primary.withOpacity(0.15),
                        borderRadius: BorderRadius.circular(12)),
                    margin: const EdgeInsets.symmetric(horizontal: 1),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          icons[index],
                          height: 10,
                        ),
                        const SizedBox(height: 5),
                        Text(
                          titles[index],
                          maxLines: 1,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontSize: 8,
                              fontWeight: FontWeight.w400,
                              overflow: TextOverflow.ellipsis),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          content[index],
                          maxLines: 1,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              overflow: TextOverflow.ellipsis),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
