import 'package:better_utils_flutter/better_utils_flutter.dart';
import 'package:better_widget_flutter/better_widget_flutter.dart';
import 'package:easy_animate/animation/pulse_animation.dart';
import 'package:easy_animate/enum/animate_type.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class BetterEmptyData extends StatelessWidget {
  BetterEmptyData({
    super.key,
    this.sizeErrorWidget,
    this.message,
    this.isNeedShowFullScreen = false,
    this.isNeedRestart = false,
    this.customWidgetError,
    this.customHeight,
  });

  final double? sizeErrorWidget;
  final double? customHeight;
  final String? message;
  final Widget? customWidgetError;
  final bool isNeedShowFullScreen;
  final bool isNeedRestart;

  @override
  Widget build(BuildContext context) {
    var content = Container(
      decoration: getBoxDecoration(background: Colors.white),
      height: isNeedShowFullScreen ? Get.height * 0.85 : customHeight,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox.square(
            dimension: (sizeErrorWidget ?? 100.0.d),
            child: customWidgetError ??
                Icon(Icons.do_not_disturb,
                    color: Theme.of(context).primaryColor.withOpacity(0.5)),
          ),
          spaceV(size: 5.0.d),
          Text(
            message ?? "No result found",
            textAlign: TextAlign.center,
            style: textDisplaySmall(
                color: Theme.of(context).primaryColor.withOpacity(0.5),
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
    return content;
  }
}
