import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:task_dreamsoft/utils/app_colors.dart';
import 'package:task_dreamsoft/utils/app_icons.dart';

import '../../../../utils/app_images.dart';

class ProductDetailsComponent extends StatelessWidget {
  const ProductDetailsComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 10),
        Row(
          children: const [
            Text(
              'يوكن بحالة جيدة',
              maxLines: 1,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 22),
            ),
            Spacer(),
            Text(
              '8.700 د.ك',
              maxLines: 1,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Container(
          // height: 30,
          alignment: Alignment.centerRight,
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          width: Get.width,
          decoration: BoxDecoration(
              color: AppColors.red044, borderRadius: BorderRadius.circular(12)),
          child: Row(
            children: [
              SvgPicture.asset(
                AppIcons.ad4,
                height: 18,
                width: 20,
                color: AppColors.white,
              ),
              const SizedBox(width: 20),
              const Text(
                'مكفولة حتى 70000 كم',
                maxLines: 1,
                textAlign: TextAlign.start,
                style: TextStyle(color: AppColors.white, fontSize: 18),
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        _buildDetailsTile('اللون الخارجي', 'ابيض', AppIcons.outColor),
        _buildDetailsTile('اللون الداخلي', 'بيج', AppIcons.inColor),
        _buildDetailsTile('نوع المقعد', 'مخمل', AppIcons.seat),
        _buildDetailsTile('فتحة سقف', '✓', AppIcons.open),
        _buildDetailsTile('كاميرا خلفية', '✓', AppIcons.camera),
        _buildDetailsTile('سينسر', 'امامي-خلفي', AppIcons.sensor),
        _buildDetailsTile('سليندر', '6', AppIcons.slinder),
        _buildDetailsTile('ناقل الحركة', 'اوتوماتيك', AppIcons.hydro),
        const SizedBox(height: 20),
        const Text(
          'رنجات الومونيم 18 انش اسود وكروم - ديكور خشب + كروم - مقعد السائق كهربائي - دواسات جانبية رنجات الومونيم 18 انش اسود وكروم - ديكور خشب + كروم - مقعد السائق كهربائي - دواسات جانبية - تحكم بالمقود مع تعيل يدوي',
          textAlign: TextAlign.start,
        ),
        const SizedBox(height: 20),
        Container(
          alignment: Alignment.centerRight,
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          width: Get.width,
          decoration: BoxDecoration(
              color: AppColors.grey1f3,
              borderRadius: BorderRadius.circular(12)),
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(width: 1, color: Colors.red),
                ),
                child: const CircleAvatar(
                    backgroundImage: AssetImage(AppImages.image1), radius: 12),
              ),
              const SizedBox(width: 20),
              const Expanded(
                child: Text(
                  'يوكن للسيارات المعتمدة',
                  maxLines: 2,
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 14),
                ),
              ),
              const SizedBox(width: 20),
              const Text(
                'كل السيارات',
                maxLines: 1,
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 14),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildDetailsTile(
    String title,
    String contnet,
    String icon,
  ) {
    return Container(
      height: 20,
      color: AppColors.secondry,
      margin: const EdgeInsets.only(bottom: 2),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 0, bottom: 5),
            child: SvgPicture.asset(icon, height: 18, width: 20),
          ),
          const SizedBox(width: 10),
          Expanded(
            flex: 2,
            child: Text(title, maxLines: 1, textAlign: TextAlign.start),
          ),
          const Spacer(),
          Expanded(
            flex: 2,
            child: Text(contnet, maxLines: 1, textAlign: TextAlign.center),
          ),
          // const Spacer()
        ],
      ),
    );
  }
}
