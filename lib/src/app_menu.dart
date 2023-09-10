import 'package:flutter/material.dart';

class AppMenu {
  const AppMenu(
    this.title,
    this.icon, {
    this.route,
  });

  final String title;
  final IconData? icon;
  final String? route;
}
