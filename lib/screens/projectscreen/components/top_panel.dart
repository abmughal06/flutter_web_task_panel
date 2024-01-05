import 'package:flutter/material.dart';
import 'package:web_duplicate_app/components/custom_button.dart';
import 'package:web_duplicate_app/components/empty_box.dart';
import 'package:web_duplicate_app/constants.dart';

class TopPanel extends StatelessWidget {
  const TopPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const TopPanelButtons(icon: icFrame, text: 'Frames', count: '0'),
          widthBox(10),
          const TopPanelButtons(
            icon: icTime,
            text: 'Time',
            count: '0s',
            iconSize: 20,
          ),
          widthBox(10),
          const TopPanelButtons(
            icon: icTime,
            text: 'Est. Speak Time',
            count: '0s',
            iconSize: 20,
          ),
          widthBox(10),
          const TopPanelButtons(icon: icWord, text: 'Words Count', count: '0'),
          widthBox(10),
          const TopPanelButtons(icon: icWord, text: 'Characters', count: '0'),
        ],
      ),
    );
  }
}
