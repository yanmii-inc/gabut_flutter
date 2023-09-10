import 'package:flutter/material.dart';
import 'package:gabut_flutter/src/detail_widget.dart';

class DetailScreen extends StatefulWidget {
  final String title;

  const DetailScreen(this.title, {super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(), body: DetailWidget(widget.title));
  }
}
