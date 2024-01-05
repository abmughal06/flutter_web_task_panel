import 'package:flutter/material.dart';
import 'package:web_duplicate_app/constants.dart';
import 'package:web_duplicate_app/screens/projectscreen/components/body_list.dart';
import 'package:web_duplicate_app/screens/projectscreen/components/header.dart';
import 'package:web_duplicate_app/screens/projectscreen/components/left_panel.dart';
import 'package:web_duplicate_app/screens/projectscreen/components/right_panel.dart';
import 'package:web_duplicate_app/screens/projectscreen/components/top_panel.dart';

class ProjectScreen extends StatelessWidget {
  const ProjectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorDarKBlue,
      body: Container(
        decoration: BoxDecoration(border: Border.all(color: colorLightBlue)),
        child: const Column(
          children: [
            Header(),
            Expanded(
              child: Row(
                children: [
                  LeftPanel(),
                  Expanded(
                    child: Column(
                      children: [
                        TopPanel(),
                        Expanded(child: BodyList()),
                      ],
                    ),
                  ),
                  RightPanel(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
