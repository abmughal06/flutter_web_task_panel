import 'package:appflowy_editor/appflowy_editor.dart';
import 'package:flutter/material.dart';
import 'package:web_duplicate_app/constants.dart';
import 'package:web_duplicate_app/screens/projectscreen/project_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      localizationsDelegates: const [
        AppFlowyEditorLocalizations.delegate,
      ],
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: colorSkyBlue),
        useMaterial3: false,
        scrollbarTheme: const ScrollbarThemeData(
          thumbColor: MaterialStatePropertyAll(colorLightBlue),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const ProjectScreen(),
    );
  }
}
