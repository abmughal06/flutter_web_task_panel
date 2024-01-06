import 'package:flutter/material.dart';
import 'package:web_duplicate_app/components/custom_button.dart';
import 'package:web_duplicate_app/components/text_widget.dart';
import 'package:web_duplicate_app/constants.dart';

class RightPanel extends StatefulWidget {
  const RightPanel({super.key});

  @override
  State<RightPanel> createState() => _RightPanelState();
}

class _RightPanelState extends State<RightPanel> {
  bool isExpanded = true;

  toggleExpansion() {
    isExpanded = !isExpanded;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AnimatedContainer(
          duration: const Duration(milliseconds: 100),
          width: isExpanded ? 174 : 0,
          height: double.infinity,
          margin: EdgeInsets.only(left: isExpanded ? 15 : 25),
          decoration: BoxDecoration(
              border: Border.all(color: colorLightBlue, width: 1)),
          child: Visibility(
            visible: isExpanded,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: colorLightBlueShade2,
                      fixedSize: const Size(174, 54),
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero)),
                  child: const TextWidget(
                    text: 'General Tasks',
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: colorLightBlueShade2,
                      fixedSize: const Size(174, 42),
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero)),
                  child: const TextWidget(
                    text: 'Add task',
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height * .4,
          right: isExpanded ? 165 : 0,
          child: ExpandedButton(
            isExpanded: !isExpanded,
            onPressed: () => toggleExpansion(),
          ),
        ),
      ],
    );
  }
}
