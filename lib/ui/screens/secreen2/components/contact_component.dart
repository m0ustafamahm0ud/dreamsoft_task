import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task_dreamsoft/utils/app_colors.dart';

import '../../../../utils/app_icons.dart';

class ContactComponent extends StatelessWidget {
  const ContactComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          CircleAvatar(
              backgroundColor: Colors.teal.withOpacity(0.5),
              radius: 20,
              child: SvgPicture.asset(
                AppIcons.call,
                height: 16,
              )),
          const SizedBox(width: 10),
          CircleAvatar(
              backgroundColor: Colors.blue.withOpacity(0.5),
              radius: 20,
              child: SvgPicture.asset(
                AppIcons.message,
                height: 16,
              )),
          const SizedBox(width: 10),
          OutlinedButton.icon(
            icon: SvgPicture.asset(
              AppIcons.location,
              height: 16,
              color: AppColors.white,
            ),
            onPressed: () {},
            style: ButtonStyle(
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24.0),
                  side: const BorderSide(width: 10, color: AppColors.white),
                ),
              ),
              backgroundColor: MaterialStateProperty.all(Colors.grey.shade800),
            ),
            label: const Text(
              'موقع السيارة',
              style: TextStyle(
                fontSize: 14,
                color: AppColors.white,
              ),
            ),
          ),
          const SizedBox(width: 10),
          OutlinedButton.icon(
            icon: SvgPicture.asset(
              AppIcons.save,
              height: 16,
              color: AppColors.primary,
            ),
            onPressed: () {},
            style: ButtonStyle(
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24.0),
                  side: const BorderSide(width: 10, color: AppColors.white),
                ),
              ),
              backgroundColor: MaterialStateProperty.all(AppColors.white),
            ),
            label: const Text(
              'موقع السيارة',
              style: TextStyle(
                fontSize: 14,
                color: AppColors.primary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
