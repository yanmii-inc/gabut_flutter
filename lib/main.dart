import 'package:flutter/material.dart';
import 'package:gabut_flutter/src/main_screen.dart';

void main() => runApp(const EscapingButton());

class EscapingButton extends StatefulWidget {
  const EscapingButton({super.key});

  @override
  State<EscapingButton> createState() => _EscapingButtonState();
}

class _EscapingButtonState extends State<EscapingButton> {
  ThemeMode _themeMode = ThemeMode.dark;
  final ColorScheme _lightColorScheme =
      const ColorScheme.light(primary: Colors.red);

  final ColorScheme _darkColorScheme =
      const ColorScheme.dark(primary: Colors.red);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      theme: ThemeData(
        primaryColor: Colors.red,
        colorScheme: _themeMode == ThemeMode.light
            ? _lightColorScheme
            : _darkColorScheme,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Account Setting'),
          actions: [
            IconButton(
              onPressed: () {
                setState(() {
                  _themeMode = (_themeMode == ThemeMode.light)
                      ? ThemeMode.dark
                      : ThemeMode.light;
                });
              },
              icon: const Icon(
                Icons.light_mode,
              ),
            )
          ],
        ),
        body: const MainScreen(),
      ),
    );
  }
}
