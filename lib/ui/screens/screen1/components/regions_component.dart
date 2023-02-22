import 'package:flutter/cupertino.dart';
import 'package:task_dreamsoft/ui/widgets/custom_elevated_button.dart';

class RegionsComponent extends StatelessWidget {
  const RegionsComponent({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> regions = ['آسيوي', 'أوروبي', 'أمريكي'];
    return SizedBox(
      height: 40,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(width: 5);
        },
        itemBuilder: (BuildContext context, int index) {
          return CustomElevatedButton(
            title: regions[index],
            width: 90,
            onPressed: () {},
          );
        },
      ),
    );
  }
}
