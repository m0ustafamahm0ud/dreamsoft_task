import 'package:flutter/material.dart';
import 'package:task_dreamsoft/ui/screens/secreen2/components/contact_component.dart';
import 'package:task_dreamsoft/ui/screens/secreen2/components/product_details_component.dart';

import 'components/related-cars_component.dart';
import 'components/screen2_header_component.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Screen2HeaderComponent(),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
              physics: const BouncingScrollPhysics(),
              children: const [
                ProductDetailsComponent(),
                SizedBox(height: 20),
                RelatedCarsComponent(),
                SizedBox(height: 20),
                ContactComponent()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
