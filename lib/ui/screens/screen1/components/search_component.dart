import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task_dreamsoft/utils/app_icons.dart';

import '../../../widgets/custom_text_field.dart';

class SearchComponent extends StatelessWidget {
  const SearchComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: CustomTextField(
        prefixIcon: SvgPicture.asset(
          AppIcons.search,
          height: 18,
        ),
        hintText: 'ابحث عن سيارتك',
        horizontalPadding: 10,
        // textAlign: TextAlign.center,
      ),
    );
  }
}
