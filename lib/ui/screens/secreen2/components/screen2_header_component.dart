import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:task_dreamsoft/utils/app_colors.dart';
import 'package:task_dreamsoft/utils/app_icons.dart';
import 'package:task_dreamsoft/utils/app_images.dart';

class Screen2HeaderComponent extends StatelessWidget {
  const Screen2HeaderComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 330,
      child: Stack(
        // alignment: Alignment.topCenter,
        clipBehavior: Clip.none,
        children: [
          Column(
            children: [
              SizedBox(
                height: 250,
                child: Image.asset(
                  AppImages.image1,
                  fit: BoxFit.cover,
                  height: double.infinity,
                  width: Get.width,
                ),
              ),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(),
                  Positioned(
                    top: -10,
                    child: SizedBox(
                      width: Get.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          _buildHeaderCard('المحرك/سلندر', AppIcons.motor, '6'),
                          _buildHeaderCard('سنة الصنع', AppIcons.ad2, '2019'),
                          _buildHeaderCard('الممشى', AppIcons.km, '20000'),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 35),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () => Get.back(),
                  child: CircleAvatar(
                      backgroundColor: AppColors.primary.withOpacity(0.3),
                      radius: 18,
                      child: SvgPicture.asset(
                        AppIcons.back,
                        height: 16,
                      )),
                ),
                const Spacer(),
                CircleAvatar(
                    backgroundColor: AppColors.primary.withOpacity(0.3),
                    radius: 18,
                    child: SvgPicture.asset(
                      AppIcons.share,
                      height: 16,
                    )),
                const SizedBox(width: 20),
                CircleAvatar(
                    backgroundColor: AppColors.primary.withOpacity(0.3),
                    radius: 18,
                    child: SvgPicture.asset(
                      AppIcons.love,
                      height: 16,
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeaderCard(
    String titlet,
    String icon,
    String content,
  ) {
    return Container(
      height: 80,
      width: 90,
      decoration: BoxDecoration(
          color: AppColors.secondry, borderRadius: BorderRadius.circular(12)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            icon,
            height: 18,
          ),
          const SizedBox(height: 5),
          Text(
            titlet,
            maxLines: 1,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 12),
          ),
          const SizedBox(height: 5),
          Text(
            content,
            maxLines: 1,
            textAlign: TextAlign.center,
            style: const TextStyle(fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
