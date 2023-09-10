import 'package:flutter/material.dart';

class UnsubscribeForm extends StatefulWidget {
  const UnsubscribeForm({
    super.key,
    required this.onFormValidated,
  });

  final Function(bool valid) onFormValidated;

  @override
  State<UnsubscribeForm> createState() => _UnsubscribeFormState();
}

class _UnsubscribeFormState extends State<UnsubscribeForm> {
  String _email = '';
  String? _groupValue;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'It is so sad that you want to leave 😢 ',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: 20),
          Text(
            'Just wondering what is the reason for your account deletion? '
            'Please specify one!',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(height: 20),
          RadioListTile(
            title: const Text('I already have another account'),
            value: '1',
            groupValue: _groupValue,
            onChanged: onReasonSelected,
          ),
          RadioListTile(
            title: const Text('I want to create another account'),
            value: '2',
            groupValue: _groupValue,
            onChanged: onReasonSelected,
          ),
          RadioListTile(
            title: const Text('I have privacy concerns'),
            value: '3',
            groupValue: _groupValue,
            onChanged: onReasonSelected,
          ),
          RadioListTile(
            title: const Text('I am bored'),
            value: '4',
            groupValue: _groupValue,
            onChanged: onReasonSelected,
          ),
          RadioListTile(
            title:
                const Text('This is temporary, I will be back in the future'),
            value: '5',
            groupValue: _groupValue,
            onChanged: onReasonSelected,
          ),
          RadioListTile(
            title: const Text('This product is disappointing me'),
            value: '6',
            groupValue: _groupValue,
            onChanged: onReasonSelected,
          ),
          const SizedBox(height: 40),
          Text(
            'Confirm your email address:',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          SizedBox(
            width: 500,
            child: TextFormField(
              decoration: const InputDecoration(hintText: 'Your email address'),
              onChanged: _onChanged,
            ),
          )
        ],
      ),
    );
  }

  void onReasonSelected(value) {
    setState(() {
      _groupValue = value;
    });
    _validate();
  }

  void _onChanged(String value) {
    setState(() {
      _email = value;
    });
    _validate();
  }

  void _validate() {
    final bool emailValid = RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(_email);
    final isValid = _groupValue != null && emailValid;
    widget.onFormValidated.call(isValid);
  }
}
