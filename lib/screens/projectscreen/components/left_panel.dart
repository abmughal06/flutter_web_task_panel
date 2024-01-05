import 'package:flutter/material.dart';
import 'package:web_duplicate_app/components/custom_button.dart';
import 'package:web_duplicate_app/components/empty_box.dart';
import 'package:web_duplicate_app/constants.dart';

class LeftPanel extends StatelessWidget {
  const LeftPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 58,
          margin: const EdgeInsets.only(right: 15),
          decoration: BoxDecoration(
              border: Border.all(color: colorLightBlue, width: 1)),
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
        Positioned(
          top: MediaQuery.of(context).size.height * .45,
          left: 50,
          child: const ExpandedButton(),
        ),
      ],
    );
  }
}
