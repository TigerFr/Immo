import'package:flutter/material.dart';
import 'package:adaptive_theme/adaptive_theme.dart';

class PARA extends StatefulWidget {
  const PARA({super.key});

  @override
  State<PARA> createState() => _PARAState();
}

class _PARAState extends State<PARA> {
  @override
   Widget build(BuildContext context) {
    return AdaptiveTheme(
      light: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.red,
        accentColor: Colors.amber,
      ),
      dark: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.red,
        accentColor: Colors.amber,
      ),
      initial: AdaptiveThemeMode.dark,
      builder: (theme, darkTheme) => MaterialApp(
        title: 'Adaptive Theme Demo',
        theme: theme,
        darkTheme: darkTheme,
      ),
    );
  }
}