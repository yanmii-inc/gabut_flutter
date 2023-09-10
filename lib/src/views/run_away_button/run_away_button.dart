
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
  final double _buttonWidth = 160;
  final double _buttonHeight = 40;

  double _leftPosition = 0.0;
  double _topPosition = 50.0;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constrain) {
        final parentWidth = constrain.maxWidth;
        final parentHeight = constrain.maxHeight;
        return Stack(
          children: <Widget>[
            AnimatedPositioned(
              left: _leftPosition,
              top: _topPosition,
              duration: const Duration(milliseconds: 100),
              curve: Curves.linear,
              child: MouseRegion(
                onEnter: (event) => _runAwayLeftOrRight(event, parentWidth),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: ElevatedButton(
                    onHover: (onHover) =>
                        onHover ? _runAwayUpOrDown(parentHeight) : null,
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size(_buttonWidth, _buttonHeight)),
                    onPressed: widget.enabled ? () {} : null,
                    child: const Center(
                      child: Text(
                        'Delete My Account',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  _runAwayLeftOrRight(PointerEvent event, double parentWidth) {
    if (!widget.enabled) return;

    if (event is PointerEnterEvent) {
      setState(() {
        if (_leftPosition < _buttonWidth) {
          _leftPosition += _buttonWidth * 2;
        } else if (_leftPosition > parentWidth - _buttonWidth) {
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

  _runAwayUpOrDown(double parentHeight) {
    if (!widget.enabled) return;

    setState(() {
      if (_topPosition < parentHeight - (_buttonHeight * 2)) {
        _topPosition += _buttonHeight;
      } else {
        _topPosition -= _buttonHeight;
      }
    });
  }
}
