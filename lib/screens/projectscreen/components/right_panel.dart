import 'package:flutter/material.dart';
import 'package:web_duplicate_app/components/custom_button.dart';
import 'package:web_duplicate_app/components/text_widget.dart';
import 'package:web_duplicate_app/constants.dart';

class RightPanel extends StatelessWidget {
  const RightPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 174,
          margin: const EdgeInsets.only(left: 15),
          decoration: BoxDecoration(
              border: Border.all(color: colorLightBlue, width: 1)),
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
        Positioned(
          top: MediaQuery.of(context).size.height * .45,
          right: 165,
          child: const ExpandedButton(),
        ),
      ],
    );
  }
}
