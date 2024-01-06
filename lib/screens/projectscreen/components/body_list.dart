import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:web_duplicate_app/components/task_panel.dart';
import 'package:web_duplicate_app/constants.dart';

class BodyList extends StatefulWidget {
  const BodyList({super.key});

  @override
  State<BodyList> createState() => _BodyListState();
}

class _BodyListState extends State<BodyList> {
  List<Widget> tasks = [];

  @override
  void initState() {
    tasks.add(const TaskPanel(count: 1));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        SingleChildScrollView(
          child: Wrap(children: tasks),
        ),
        Positioned(
          right: 0,
          bottom: 25,
          child: ElevatedButton(
            onPressed: () {
              if (mounted) {
                setState(() {
                  tasks.insert(0, TaskPanel(count: tasks.length + 1));
                });
              }
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: colorSkyBlue,
              shape: const CircleBorder(),
            ),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: SvgPicture.asset(icAdd),
            ),
          ),
        )
      ],
    );
  }
}
