import 'package:flutter/material.dart';
import 'package:web_duplicate_app/components/empty_box.dart';
import 'package:web_duplicate_app/constants.dart';

class CustomCheckBox extends StatefulWidget {
  const CustomCheckBox({super.key});

  @override
  State<CustomCheckBox> createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  bool isTrue = false;

  toggleCheckBox() {
    isTrue = !isTrue;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        color: colorMediumBlue,
        shape: BoxShape.circle,
        border: Border.all(color: colorLightBlue),
      ),
      child: OutlinedButton(
        onPressed: () => toggleCheckBox(),
        style: OutlinedButton.styleFrom(
          minimumSize: const Size(23, 23),
          side: const BorderSide(color: colorLightBlue),
          padding: EdgeInsets.zero,
          shape: const CircleBorder(),
        ),
        child: isTrue
            ? const Icon(
                Icons.done,
                size: 10,
                color: colorWhite,
              )
            : widthBox(8),
      ),
    );
  }
}
