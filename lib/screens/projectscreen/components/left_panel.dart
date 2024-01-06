import 'package:flutter/material.dart';
import 'package:web_duplicate_app/components/custom_button.dart';
import 'package:web_duplicate_app/components/empty_box.dart';
import 'package:web_duplicate_app/constants.dart';

class LeftPanel extends StatefulWidget {
  const LeftPanel({super.key});

  @override
  State<LeftPanel> createState() => _LeftPanelState();
}

class _LeftPanelState extends State<LeftPanel> {
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
          width: isExpanded ? 58 : 0,
          height: double.infinity,
          margin: EdgeInsets.only(right: isExpanded ? 15 : 25),
          decoration: BoxDecoration(
              border: Border.all(color: colorLightBlue, width: 1)),
          child: Visibility(
            visible: isExpanded,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                heightBox(29),
                const LeftPanelButtons(icon: icEventNotes),
                heightBox(13),
                const LeftPanelButtons(icon: icEventperson),
              ],
            ),
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height * .4,
          left: isExpanded ? 50 : 0,
          child: ExpandedButton(
            isExpanded: isExpanded,
            onPressed: () => toggleExpansion(),
          ),
        ),
      ],
    );
  }
}
