import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:web_duplicate_app/components/text_widget.dart';
import 'package:web_duplicate_app/constants.dart';

class TopPanelButtons extends StatelessWidget {
  const TopPanelButtons({
    super.key,
    this.onPressed,
    required this.icon,
    required this.text,
    required this.count,
    this.iconSize,
  });
  final String text;
  final String count;
  final String icon;
  final double? iconSize;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      onPressed: onPressed ?? () {},
      style: OutlinedButton.styleFrom(
          backgroundColor: colorMediumBlue,
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
          side: const BorderSide(color: colorLightBlue),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(88))),
      label: TextWidget(
        text: '$text \t\t $count',
      ),
      icon: SvgPicture.asset(
        icon,
        height: iconSize,
      ),
    );
  }
}

class LeftPanelButtons extends StatelessWidget {
  const LeftPanelButtons({super.key, required this.icon, this.onPressed});

  final String icon;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed ?? () {},
      style: OutlinedButton.styleFrom(
        backgroundColor: colorMediumBlue,
        padding: const EdgeInsets.all(15),
        side: const BorderSide(color: colorLightBlue),
        shape: const CircleBorder(),
      ),
      child: SvgPicture.asset(
        icon,
      ),
    );
  }
}

class ExpandedButton extends StatelessWidget {
  const ExpandedButton({super.key, this.onPressed, required this.isExpanded});
  final VoidCallback? onPressed;
  final bool isExpanded;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 24,
      width: 17,
      child: ElevatedButton(
        onPressed: onPressed ?? () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: colorSkyBlue,
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        child: Transform.rotate(
          angle: isExpanded ? pi / 1 : 0,
          child: SvgPicture.asset(icRightArrow),
        ),
      ),
    );
  }
}

class TaskPanelFilterButton extends StatelessWidget {
  const TaskPanelFilterButton(
      {super.key, required this.icon, required this.text});
  final String icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      onPressed: () {},
      style: OutlinedButton.styleFrom(
          backgroundColor: colorMediumBlue,
          side: const BorderSide(color: colorLightBlue),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: 8,
            vertical: 0,
          ),
          minimumSize: const Size(50, 30)),
      icon: SvgPicture.asset(
        icon,
        height: 14,
      ),
      label: TextWidget(
        text: text,
        fontSize: 11,
      ),
    );
  }
}

class ArrowButtons extends StatelessWidget {
  const ArrowButtons({super.key, required this.icon});
  final String icon;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      style: OutlinedButton.styleFrom(
        backgroundColor: colorMediumBlue,
        side: const BorderSide(color: colorLightBlue),
        padding: EdgeInsets.zero,
        minimumSize: const Size(20, 20),
        shape: const CircleBorder(),
      ),
      child: Padding(
        padding: const EdgeInsets.all(4),
        child: SvgPicture.asset(
          icon,
          height: 12,
        ),
      ),
    );
  }
}
