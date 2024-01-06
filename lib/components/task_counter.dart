import 'package:flutter/material.dart';
import 'package:web_duplicate_app/components/text_widget.dart';
import 'package:web_duplicate_app/constants.dart';

class TaskCounter extends StatelessWidget {
  const TaskCounter({
    super.key,
    required this.count,
  });
  final int count;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 22,
      width: 22,
      decoration: BoxDecoration(
        color: colorMediumBlue,
        shape: BoxShape.circle,
        border: Border.all(color: colorLightBlue),
      ),
      child: Center(
        child: TextWidget(
          text: "$count",
          fontSize: 11,
        ),
      ),
    );
  }
}
