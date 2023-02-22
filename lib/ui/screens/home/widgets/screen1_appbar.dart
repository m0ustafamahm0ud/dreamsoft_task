// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:svg_drawing_animation/svg_drawing_animation.dart';
// import '../../../../controllers/base_nav_bar_ctrl.dart';
// import '../../../../utils/app_colors.dart';
// import '../../../../utils/app_icons.dart';
// import '../../../../utils/shared_prefrences.dart';

// class HomeAppBar extends StatelessWidget {
//   const HomeAppBar({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return GetBuilder<BaseNavBarCtrl>(
//       builder: (controller) => Stack(
//         // alignment: Alignment.topCenter,
//         children: [
//           Container(
//             height: 120,
//             padding: const EdgeInsets.only(left: 37, right: 37, top: 30),
//             child: Row(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 GestureDetector(
//                   onTap: () => controller.zoomDrawerController.toggle!(
//                       forceToggle: true),
//                   child: CircleAvatar(
//                     radius: 30,
//                     backgroundColor: AppColors.blue14B.withOpacity(0.2),
//                   ),
//                 ),
//                 const SizedBox(width: 10),
//                 Expanded(
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         controller.greeting(),
//                         style: const TextStyle(
//                           fontSize: 20,
//                           color: AppColors.blue14B,
//                         ),
//                       ),
//                       Text(
//                         MySharedPreferences.name,
//                         style: const TextStyle(
//                           overflow: TextOverflow.ellipsis,
//                           fontSize: 20,
//                           color: AppColors.blue14B,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           MySharedPreferences.language == 'ar'
//               ? Positioned(
//                   right: -35,
//                   top: -5,
//                   child: GestureDetector(
//                     onTap: () => controller.zoomDrawerController.toggle!(
//                         forceToggle: true),
//                     child: SizedBox(
//                       height: 80,
//                       width: 80,
//                       child: SvgDrawingAnimation(
//                         SvgProvider.asset(AppIcons.drawerLine),
//                         // curve: Curves.easeIn,
//                         duration: const Duration(seconds: 2),
//                       ),
//                     ),
//                   ),
//                 )
//               : Positioned(
//                   top: -5,
//                   left: -35,
//                   child: GestureDetector(
//                     onTap: () => controller.zoomDrawerController.toggle!(
//                         forceToggle: true),
//                     child: RotationTransition(
//                       turns: const AlwaysStoppedAnimation(235 / 360),
//                       child: SizedBox(
//                         height: 80,
//                         width: 80,
//                         child: SvgDrawingAnimation(
//                           SvgProvider.asset(AppIcons.drawerLine),
//                           duration: const Duration(seconds: 2),
//                         ),
//                       ),
//                       // child: Image.asset(
//                       //   AppImages.drawer,
//                       //   height: 80,
//                       //   width: 80,
//                       // ),
//                     ),
//                   ),
//                 ),
//         ],
//       ),
//     );
//   }
// }
