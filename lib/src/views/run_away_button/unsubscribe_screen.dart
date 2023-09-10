import 'package:flutter/material.dart';
import 'package:gabut_flutter/src/views/run_away_button/run_away_button.dart';
import 'package:gabut_flutter/src/views/run_away_button/unsubscribe_form.dart';

class UnsubscribeScreen extends StatefulWidget {
  const UnsubscribeScreen({super.key});

  @override
  State<UnsubscribeScreen> createState() => _UnsubscribeScreenState();
}

class _UnsubscribeScreenState extends State<UnsubscribeScreen> {
  bool _isFormValid = false;
  int selectedValue = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              UnsubscribeForm(
                  onFormValidated: (valid) =>
                      setState(() => _isFormValid = valid)),
              Expanded(child: RunAwayButton(enabled: _isFormValid)),
            ],
          ),
        ),
      ],
    );
  }
}
