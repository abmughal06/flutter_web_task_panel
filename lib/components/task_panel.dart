import 'package:flutter/material.dart';
import 'package:web_duplicate_app/components/custom_button.dart';
import 'package:web_duplicate_app/components/custom_checkbox.dart';
import 'package:web_duplicate_app/components/custom_dropdown.dart';
import 'package:web_duplicate_app/components/custom_expansion_tile.dart';
import 'package:web_duplicate_app/components/empty_box.dart';
import 'package:web_duplicate_app/components/task_counter.dart';
import 'package:web_duplicate_app/components/text_widget.dart';
import 'package:web_duplicate_app/constants.dart';

class TaskPanel extends StatelessWidget {
  const TaskPanel({super.key, required this.count});

  final int count;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
                  const CustomExpansionPanel(),
                ],
              ),
            ),
          ),
          Positioned(
            left: 0,
            top: 0,
            child: Row(
              children: [
                TaskCounter(count: count),
                widthBox(3),
                const TaskCounter(count: 99),
                widthBox(3),
                const CustomCheckBox(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
