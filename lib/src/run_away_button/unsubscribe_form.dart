import 'package:flutter/material.dart';

class UnsubscribeForm extends StatefulWidget {
  const UnsubscribeForm({
    super.key,
    required this.onReasonSelected,
  });

  final Function(String? reason) onReasonSelected;

  @override
  State<UnsubscribeForm> createState() => _UnsubscribeFormState();
}

class _UnsubscribeFormState extends State<UnsubscribeForm> {
  String? _groupValue;

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
        Text(
          'We\'re sorry that you want to unsubscribe. '
          'Just wondering what is the reason? Please specify one!',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        RadioListTile(
          title: const Text('I already have another account'),
          value: '1',
          groupValue: _groupValue,
          onChanged: onReasonSelected,
        ),
        RadioListTile(
          title: const Text('I am disappointed with the service'),
          value: '2',
          groupValue: _groupValue,
          onChanged: onReasonSelected,
        ),
        RadioListTile(
          title: const Text('I want to create another account'),
          value: '3',
          groupValue: _groupValue,
          onChanged: onReasonSelected,
        ),
        RadioListTile(
          title: const Text('I don\'t feel safe about the my privacy'),
          value: '4',
          groupValue: _groupValue,
          onChanged: (value) {
            setState(() {
              _groupValue = value;
            });
          },
        ),
        RadioListTile(
          title: const Text('I am bored'),
          value: '5',
          groupValue: _groupValue,
          onChanged: onReasonSelected,
        ),
        RadioListTile(
          title: const Text('I found another better service'),
          value: '6',
          groupValue: _groupValue,
          onChanged: (value) {
            setState(() {
              _groupValue = value;
            });
          },
        ),
        RadioListTile(
          title: const Text('This is temporary, I will be back in the future'),
          value: '7',
          groupValue: _groupValue,
          onChanged: onReasonSelected,
        )
      ],
    ));
  }

  void onReasonSelected(value) {
    setState(() {
      _groupValue = value;
    });
    widget.onReasonSelected.call(value);
  }
}
