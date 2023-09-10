import 'package:flutter/material.dart';
import 'package:gabut_flutter/src/app_menu.dart';
import 'package:gabut_flutter/src/views/list_detail/detail_screen.dart';
import 'package:gabut_flutter/src/views/list_detail/detail_widget.dart';
import 'package:gabut_flutter/src/views/list_detail/list_widget.dart';
import 'package:gabut_flutter/src/views/run_away_button/unsubscribe_screen.dart';
import 'package:gabut_flutter/src/utils/extensions/build_context_extension.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 6;

  final List<AppMenu> masterDataMenuItems = [
    const AppMenu('Dashboard', Icons.dashboard),
    const AppMenu('Posts', Icons.list),
    const AppMenu('Photos', Icons.photo_album),
    const AppMenu('Orders', Icons.shop),
    const AppMenu('Transactions', Icons.sell),
    const AppMenu('Payments', Icons.payment),
    const AppMenu('Settings', Icons.settings),
  ];

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) {
        return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: ListWidget(
                masterDataMenuItems,
                (value) {
                  if (context.isLargeScreen) {
                    setState(() {
                      _selectedIndex = value;
                    });
                  } else {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return DetailScreen(masterDataMenuItems[value].title);
                      },
                    ));
                  }
                },
              ),
            ),
            if (context.isLargeScreen)
              Flexible(
                  flex: 4,
                  fit: FlexFit.loose,
                  child:
                      DetailWidget(masterDataMenuItems[_selectedIndex].title))
          ],
        );
      },
    );
  }
}
