
import 'package:better_utils_flutter/better_utils_flutter.dart';
import 'package:better_widget_flutter/better_widget_flutter.dart';
import 'package:flutter/material.dart';


class BetterLabel extends StatelessWidget {
  const BetterLabel({
    super.key,
    required this.label,
    required this.child,
    this.errorText,
    this.require = false,
    this.labelSubWidget,
    this.action,
    this.enable = true,
    this.labelPadding = EdgeInsets.zero,
    this.labelSize,
    this.gap,
  });

  final Widget child;
  final String label;
  final String? errorText;
  final Widget? labelSubWidget;
  final bool require;
  final bool enable;
  final Widget? action;
  final TextStyle? labelSize;
  final double? gap;
  final EdgeInsetsGeometry labelPadding;

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: !enable,
      child: Opacity(
        opacity: enable ? 1 : 0.5,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (label.isNotEmpty)
              Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: labelPadding,
                    child: Text(
                      label,
                      style: labelSize ?? textDisplaySmall(),
                    ),
                  ),
                  if (require)
                    Text("*", style: textDisplaySmall(color: Colors.red)),
                  spaceH(),
                  if (labelSubWidget != null) labelSubWidget!,
                  if (action != null) const Spacer(),
                  if (action != null) action!,
                ],
              ),
            spaceV(size: 5.0.d),
            if (gap != null) spaceV(),
            child,
            if (errorText != null)
              Padding(
                padding: const EdgeInsets.only(left: 12, top: 10),
                child: Text(
                  errorText!,
                  style: textDisplaySmall(color: Colors.red),
                ),
              )
          ],
        ),
      ),
    );
  }
}
