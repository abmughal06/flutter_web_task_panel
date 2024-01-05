import 'package:expansion_tile_group/expansion_tile_group.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:web_duplicate_app/components/custom_button.dart';
import 'package:web_duplicate_app/components/custom_dropdown.dart';
import 'package:web_duplicate_app/components/empty_box.dart';
import 'package:web_duplicate_app/components/text_field.dart';
import 'package:web_duplicate_app/components/text_widget.dart';
import 'package:web_duplicate_app/constants.dart';

// List choiceIcon = [icLocation, icCheckList, icDeadline];

// List choiceText = ['Location', 'Checklist', 'Deadline'];

// List choiceIcon2 = [icIdeas, icObstacle];

// List choiceText2 = ['Ideas', 'Obstacles'];

// List filterText = [
//   'Aspect Ratio',
//   'Type of Shot',
//   'Camera Angle',
//   'Camera Movement'
// ];

class TaskPanel extends StatelessWidget {
  const TaskPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 645,
      width: 527,
      child: Stack(
        children: [
          Container(
            margin:
                const EdgeInsets.only(left: 8, right: 8, top: 16, bottom: 10),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                  color: colorLightBlue,
                  width: 1,
                ),
              ),
              child: Column(
                children: [
                  //filters
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          widthBox(12),
                          const TaskPanelFilterButton(
                            icon: icLocation,
                            text: 'Location',
                          ),
                          widthBox(12),
                          const TaskPanelFilterButton(
                            icon: icCheckList,
                            text: 'Checklist',
                          ),
                          widthBox(12),
                          const TaskPanelFilterButton(
                            icon: icDeadline,
                            text: 'Deadline',
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            color: colorLightBlue,
                            width: 1,
                            height: 55,
                          ),
                          widthBox(15),
                          Badge(
                            backgroundColor: Colors.transparent,
                            label: Container(
                              padding: const EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                color: colorMediumBlue,
                                border: Border.all(color: colorLightBlue),
                                shape: BoxShape.circle,
                              ),
                              child: const TextWidget(
                                text: '0',
                                fontSize: 9,
                              ),
                            ),
                            child: const TaskPanelFilterButton(
                              icon: icIdeas,
                              text: 'Ideas',
                            ),
                          ),
                          widthBox(12),
                          Badge(
                            backgroundColor: Colors.transparent,
                            label: Container(
                              padding: const EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                color: colorMediumBlue,
                                border: Border.all(color: colorLightBlue),
                                shape: BoxShape.circle,
                              ),
                              child: const TextWidget(
                                text: '0',
                                fontSize: 9,
                              ),
                            ),
                            child: const TaskPanelFilterButton(
                              icon: icObstacle,
                              text: 'Obstacles',
                            ),
                          ),
                          widthBox(12)
                        ],
                      ),
                    ],
                  ),
                  //image container
                  Container(
                    height: 280,
                    decoration: BoxDecoration(
                      border: Border.all(color: colorLightBlue, width: 0.5),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: TaskPanelFilterButton(
                              icon: icConnect,
                              text: 'Connect',
                            ),
                          ),
                        ),
                        const Align(
                          alignment: Alignment.center,
                          child: TextWidget(
                            text: 'IMAGE HERE',
                            fontSize: 36,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  const CustomDropDown(
                                    hint: 'Sketch Type',
                                  ),
                                  widthBox(10),
                                  const ArrowButtons(icon: icLeftAndroidArrow),
                                  widthBox(5),
                                  Container(
                                    decoration: BoxDecoration(
                                        color: colorMediumBlue,
                                        border:
                                            Border.all(color: colorLightBlue),
                                        borderRadius: BorderRadius.circular(6)),
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8, vertical: 4),
                                    child: const TextWidget(
                                      text: '1 of 3',
                                      fontSize: 11,
                                    ),
                                  ),
                                  widthBox(5),
                                  const ArrowButtons(icon: icRightAndroidArrow),
                                ],
                              ),
                              const TaskPanelFilterButton(
                                icon: icDoubleArrow,
                                text: 'Arrows',
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  //dropdowns
                  Container(
                    height: 40,
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const CustomDropDown(
                          hint: 'Aspect Ratio',
                        ),
                        widthBox(10),
                        const CustomDropDown(
                          hint: 'Type of Shot',
                        ),
                        widthBox(10),
                        const CustomDropDown(
                          hint: 'Camera Angle',
                        ),
                        widthBox(10),
                        const CustomDropDown(
                          hint: 'Camera Movement',
                        ),
                      ],
                    ),
                  ),
                  //expansion tile
                  ExpansionTileGroup(
                    children: [
                      ExpansionTileWithoutBorderItem(
                        title: Row(
                          children: [
                            widthBox(200),
                            const TextWidget(
                              color: colorWhite,
                              text: 'Script Information',
                              fontSize: 11,
                              fontWeight: FontWeight.w600,
                            ),
                            widthBox(12),
                            SvgPicture.asset(
                              icDownArrow,
                              height: 7,
                            ),
                          ],
                        ),
                        isDefaultVerticalPadding: false,
                        border: const Border(
                          top: BorderSide(color: colorLightBlue),
                          bottom: BorderSide(color: colorLightBlue),
                        ),
                        isHasTrailing: false,
                        iconColor: colorWhite,
                        collapsedBackgroundColor: colorMediumBlue,
                        tilePadding: const EdgeInsets.symmetric(vertical: 4),
                        collapsedIconColor: colorWhite,
                        children: const [],
                      )
                    ],
                  ),
                  //editors Heading
                  Row(
                    children: [
                      SizedBox(
                        width: 64,
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              height: 35,
                              decoration: const BoxDecoration(
                                  border: Border(
                                      bottom:
                                          BorderSide(color: colorLightBlue))),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(icTime),
                                  widthBox(6),
                                  const TextWidget(
                                    text: 'Time',
                                    fontSize: 11,
                                  ),
                                ],
                              ),
                            ),
                            //Time Picker Space
                            const CustomTextField(),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 272,
                        child: Column(
                          children: [
                            Container(
                              height: 35,
                              padding: const EdgeInsets.only(left: 10),
                              decoration: const BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(color: colorLightBlue),
                                  left: BorderSide(color: colorLightBlue),
                                  right: BorderSide(color: colorLightBlue),
                                ),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SvgPicture.asset(icScript),
                                  widthBox(6),
                                  const TextWidget(
                                    text: 'Script',
                                    fontSize: 11,
                                  ),
                                ],
                              ),
                            ),
                            const CustomTextField(),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 172,
                        child: Column(
                          children: [
                            Container(
                              height: 35,
                              decoration: const BoxDecoration(
                                  border: Border(
                                bottom: BorderSide(color: colorLightBlue),
                              )),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(icVisual),
                                  widthBox(6),
                                  const TextWidget(
                                    text: 'Visual Explanation',
                                    fontSize: 11,
                                  ),
                                ],
                              ),
                            ),
                            const CustomTextField(),
                          ],
                        ),
                      ),
                    ],
                  ),
                  //editors
                  // Row(
                  //   children: [TextField()],
                  // )
                ],
              ),
            ),
          ),
          Positioned(
            left: 0,
            top: 0,
            child: Row(
              children: [
                // counter(),
                widthBox(3),
                // counter(),
                widthBox(3),
                // emptyCircle(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// Widget counter() {
//   return Container(
//     padding: const EdgeInsets.all(4),
//     decoration: BoxDecoration(
//       color: colorMediumBlue,
//       shape: BoxShape.circle,
//       border: Border.all(color: colorLightBlue),
//     ),
//     child: const TextWidget(
//       text: '0',
//       fontSize: 11,
//     ),
//   );
// }

// Widget counter2() {
//   return Container(
//     padding: const EdgeInsets.all(3),
//     decoration: BoxDecoration(
//       color: colorMediumBlue,
//       shape: BoxShape.circle,
//       border: Border.all(color: colorLightBlue),
//     ),
//     child: const TextWidget(
//       text: '0',
//       fontSize: 10,
//     ),
//   );
// }

// Widget emptyCircle() {
//   return Container(
//     padding: const EdgeInsets.all(2),
//     decoration: BoxDecoration(
//       color: colorMediumBlue,
//       shape: BoxShape.circle,
//       border: Border.all(color: colorLightBlue),
//     ),
//     child: Container(
//       padding: const EdgeInsets.all(4),
//       decoration: BoxDecoration(
//         color: colorMediumBlue,
//         shape: BoxShape.circle,
//         border: Border.all(color: colorLightBlue),
//       ),
//     ),
//   );
// }

// Widget choiceBox({required String icon, required String text}) {
//   return Container(
//     margin: const EdgeInsets.only(left: 9, top: 5),
//     padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
//     decoration: BoxDecoration(
//       color: colorMediumBlue,
//       border: Border.all(color: colorLightBlue, width: 1),
//       borderRadius: BorderRadius.circular(4),
//     ),
//     child: Row(
//       children: [
//         SvgPicture.asset(icon),
//         widthBox(6),
//         TextWidget(
//           text: text,
//           fontSize: 11,
//         ),
//       ],
//     ),
//   );
// }

// Widget choiceBox2({required String icon, required String text}) {
//   return Stack(
//     children: [
//       Container(
//         margin: const EdgeInsets.only(right: 12, top: 15, bottom: 10),
//         padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
//         decoration: BoxDecoration(
//           color: colorMediumBlue,
//           border: Border.all(color: colorLightBlue, width: 1),
//           borderRadius: BorderRadius.circular(4),
//         ),
//         child: Row(
//           children: [
//             SvgPicture.asset(icon),
//             widthBox(6),
//             TextWidget(
//               text: text,
//               fontSize: 11,
//             ),
//           ],
//         ),
//       ),
//       Positioned(right: 3, top: 0, child: counter2())
//     ],
//   );
// }
