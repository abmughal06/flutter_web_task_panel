import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:web_duplicate_app/components/empty_box.dart';
import 'package:web_duplicate_app/components/text_field.dart';
import 'package:web_duplicate_app/components/text_widget.dart';
import 'package:web_duplicate_app/constants.dart';

class CustomExpansionPanel extends StatefulWidget {
  const CustomExpansionPanel({super.key});

  @override
  State<CustomExpansionPanel> createState() => _CustomExpansionPanelState();
}

class _CustomExpansionPanelState extends State<CustomExpansionPanel> {
  late double height;

  bool isPanelOpen = false;

  togglePanelHeight() {
    if (isPanelOpen) {
      height = 24;
    } else {
      height = 226;
    }
    isPanelOpen = !isPanelOpen;
    setState(() {});
  }

  @override
  void initState() {
    height = 24;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      height: height,
      duration: const Duration(milliseconds: 100),
      child: Column(
        children: [
          OutlinedButton(
            onPressed: () => togglePanelHeight(),
            style: OutlinedButton.styleFrom(
              backgroundColor: colorMediumBlue,
              side: const BorderSide(
                color: colorLightBlue,
                width: 0.7,
              ),
              minimumSize: const Size(516, 32),
              shape:
                  const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const TextWidget(
                  text: 'Script Information',
                  fontSize: 11,
                  fontWeight: FontWeight.w600,
                ),
                widthBox(6),
                SvgPicture.asset(icDownArrow),
              ],
            ),
          ),
          Visibility(
            visible: isPanelOpen,
            child: Expanded(
              child: Table(
                columnWidths: const {
                  0: FlexColumnWidth(1.5),
                  1: FlexColumnWidth(5),
                  2: FlexColumnWidth(3.5),
                },
                border: TableBorder.symmetric(
                  inside: const BorderSide(color: colorLightBlue),
                ),
                children: [
                  TableRow(
                    children: [
                      tableHeading(icon: icTime, text: 'Time'),
                      tableHeading(icon: icScript, text: 'Script'),
                      tableHeading(icon: icVisual, text: 'Visual Explanation')
                    ],
                  ),
                  const TableRow(
                    children: [
                      CustomTextField(),
                      CustomTextField(),
                      CustomTextField(),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

Widget tableHeading({required String icon, required String text}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
    child: Row(
      children: [
        SvgPicture.asset(icon),
        widthBox(6),
        TextWidget(
          text: text,
          fontSize: 11,
        )
      ],
    ),
  );
}
