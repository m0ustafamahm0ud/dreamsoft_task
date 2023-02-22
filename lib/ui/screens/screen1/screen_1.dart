import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_dreamsoft/ui/screens/screen1/components/regions_component.dart';
import 'package:task_dreamsoft/utils/app_icons.dart';

import 'components/bottom_component.dart';
import 'components/car_types_component.dart';
import 'components/cars_gridview_component.dart';
import 'components/header_component.dart';
import 'components/search_component.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(AppIcons.menu, height: 15)),
        actions: [
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(AppIcons.notification, height: 18)),
        ],
      ),
      body: SafeArea(
          child: Column(
        children: [
          const CarTypesComponent(),
          Expanded(
            child: ListView(
              physics: const BouncingScrollPhysics(),
              children: const [
                HeaderComponent(),
                SizedBox(height: 10),
                SearchComponent(),
                SizedBox(height: 15),
                RegionsComponent(),
                SizedBox(height: 15),
                CarsGridViewComponent(),
                SizedBox(height: 15),
                BottomComponent(),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
