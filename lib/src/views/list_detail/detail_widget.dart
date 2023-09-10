import 'package:flutter/material.dart';
import 'package:gabut_flutter/src/run_away_button/unsubscribe_screen.dart';

class DetailWidget extends StatefulWidget {
  final String title;

  const DetailWidget(this.title, {super.key});

  @override
  State<DetailWidget> createState() => _DetailWidgetState();
}

class _DetailWidgetState extends State<DetailWidget> {
  @override
  Widget build(BuildContext context) {
    return const UnsubscribeScreen();
  }
}
