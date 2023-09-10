import 'package:flutter/material.dart';
import 'package:gabut_flutter/src/app_menu.dart';
import 'package:gabut_flutter/src/utils/extensions/build_context_extension.dart';

typedef ItemSelectedCallback = void Function(int value);

class ListWidget extends StatefulWidget {
  final ItemSelectedCallback onItemSelected;
  final List<AppMenu> appMenuItems;
  const ListWidget(this.appMenuItems, this.onItemSelected, {super.key});

  @override
  State<ListWidget> createState() => _ListWidgetState();
}

class _ListWidgetState extends State<ListWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: widget.appMenuItems.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              InkWell(
                onTap: () => widget.onItemSelected(index),
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Icon(
                        widget.appMenuItems[index].icon,
                        size: 24,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        widget.appMenuItems[index].title,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 1,
                color: Colors.black,
              ),
            ],
          );
        },
      ),
    );
  }
}
