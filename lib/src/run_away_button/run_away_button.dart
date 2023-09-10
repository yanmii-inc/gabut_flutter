import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RunAwayButton extends StatefulWidget {
  const RunAwayButton({
    super.key,
    this.enabled = false,
  });

  final bool enabled;

  @override
  State<RunAwayButton> createState() => _RunAwayButtonState();
}

class _RunAwayButtonState extends State<RunAwayButton>
    with SingleTickerProviderStateMixin {
  final double _buttonWidth = 150;
  final double _buttonHeight = 40;

  double _leftPosition = 100.0;
  double _topPosition = 100.0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        AnimatedPositioned(
          left: _leftPosition,
          top: _topPosition,
          duration: const Duration(milliseconds: 100),
          curve: Curves.linear,
          child: MouseRegion(
            onEnter: (event) => _runAwayLeftOrRight(event),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: ElevatedButton(
                onHover: (onHover) => onHover ? _runAwayUpOrDown : null,
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(_buttonWidth, _buttonHeight)),
                onPressed: widget.enabled ? () {} : null,
                child: const Center(
                  child: Text(
                    'Unsubscribe',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  _runAwayLeftOrRight(PointerEvent event) {
    if (!widget.enabled) return;

    if (event is PointerEnterEvent) {
      final screenWidth = MediaQuery.of(context).size.width;
      setState(() {
        if (_leftPosition < _buttonWidth) {
          _leftPosition += _buttonWidth * 2;
        } else if (_leftPosition > screenWidth - _buttonWidth) {
          _leftPosition -= _buttonWidth * 2;
        } else if (event.localPosition.dx <= _buttonWidth / 2) {
          _leftPosition += _buttonWidth;
        } else if (event.localPosition.dx > _buttonWidth / 2) {
          _leftPosition -= _buttonWidth;
        }
      });
      return;
    }
  }

  _runAwayUpOrDown() {
    if (!widget.enabled) return;

    final screenHeight = MediaQuery.of(context).size.height;
    setState(() {
      if (_topPosition < _buttonHeight) {
        _topPosition += _buttonHeight;
      } else if (_topPosition > screenHeight - screenHeight * 2) {
        _topPosition -= _buttonHeight;
      }
    });
  }
}
