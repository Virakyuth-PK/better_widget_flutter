// ignore_for_file: prefer_const_constructors_in_immutables, use_key_in_widget_constructors

import 'package:better_utils_flutter/better_utils_flutter.dart';

import 'package:flutter/material.dart';

class BetterButton extends StatefulWidget {
  final String? toolTip;
  final GestureTapCallback? onPress;
  final Widget child;
  final BorderRadius? borderRadius;
  late final Color? primaryColor;

  BetterButton({
    this.toolTip,
    required this.onPress,
    required this.child,
    this.borderRadius,
    this.primaryColor
  });

  @override
  State<BetterButton> createState() => _BetterButtonState();
}

class _BetterButtonState extends State<BetterButton> {



  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        widget.child,
        Positioned.fill(
          child: ClipRRect(
            borderRadius: widget.borderRadius ?? BorderRadius.circular(10.0.d),
            child: Material(
              color: Colors.transparent,
              child: widget.toolTip == null
                  ? InkWell(
                splashColor: widget.primaryColor,
                focusColor: widget.primaryColor,
                highlightColor: widget.primaryColor,
                overlayColor: WidgetStateColor.resolveWith(
                        (states) => widget.primaryColor!),
                onTap: widget.onPress,
              )
                  : Tooltip(
                message: widget.toolTip,
                child: InkWell(
                  onTap: widget.onPress,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Future<void> initState() async {
    super.initState();
    if (widget.primaryColor == null) {
      setState(() {
        widget.primaryColor = Theme.of(context).primaryColor;
      });
    }
  }
}
