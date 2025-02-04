import 'package:better_utils_flutter/better_utils_flutter.dart';
import 'package:better_widget_flutter/better_widget_flutter.dart';
import 'package:flutter/material.dart';

class BetterSection extends StatefulWidget {
  const BetterSection(
      {super.key,
        required this.labelWidget,
        required this.child,
        this.canCollapse = true,
        this.isOpen = false,
        this.isNeedIcon = true,
        this.onPress,
        this.require = false});
  final Widget labelWidget;
  final Widget child;
  final bool canCollapse;
  final bool require;
  final bool isNeedIcon;

  final bool isOpen;
  final GestureTapCallback? onPress;

  @override
  State<BetterSection> createState() => _BetterSectionState();
}

class _BetterSectionState extends State<BetterSection> {
  bool visible = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BetterButton(
          onPress: widget.onPress ??
                  () {
                setState(() {
                  if (widget.canCollapse) {
                    visible = !visible;
                  }
                });
              },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              widget.labelWidget,
              if (widget.require)
                Text("*",
                    style: textDisplaySmall(
                        fontWeight: FontWeight.w700,
                        color: Theme.of(context).colorScheme.error)),
              if (widget.isNeedIcon == true)
                Icon(
                  visible
                      ? Icons.keyboard_arrow_down_rounded
                      : Icons.keyboard_arrow_right_rounded,
                  size: 30.0.d,
                ),
            ],
          ),
        ),
        spaceV(size: 10.0.d),
        Visibility(
          maintainState: true,
          visible:
          // visible,
          widget.onPress != null && widget.isOpen ? widget.isOpen : visible,
          child: widget.child,
        ),
      ],
    );
  }

  @override
  void initState() {
    super.initState();
    visible = widget.isOpen;
  }
}
