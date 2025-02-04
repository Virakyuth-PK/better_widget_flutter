import 'package:better_utils_flutter/better_utils_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:toastification/toastification.dart';

import 'better_container_decoration.dart';
import 'better_spacing.dart';
import 'text/better_text_size.dart';


betterSnackBar({
  required String title,
  required String message,
  Color? backgroundColor,
  Color? color,
  bool isError = false,
  Widget? icon,
  Widget? iconTrailing,
  Duration? autoCloseDuration,
}) {
  toastification.showCustom(
    context: Get.context,
    autoCloseDuration: autoCloseDuration ?? const Duration(seconds: 2),
    alignment: Alignment.topCenter,
    builder: (BuildContext context, ToastificationItem holder) {
      return Container(
        decoration: getBoxDecoration(background: Colors.white, hasShadow: true),
        margin: EdgeInsets.symmetric(horizontal: 10.0.d),
        padding: EdgeInsets.all(10.0.d),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                icon ??
                    SizedBox.shrink(),
                spaceH(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: Get.width * 0.6,
                      child: Text(
                        title,
                        // overflow: TextOverflow.ellipsis,
                        style: textDisplaySuperSmall(
                          fontWeight: FontWeight.bold,
                          color: color ?? Colors.grey,
                        ),
                      ),
                    ),
                    spaceV(size: 5.0.d),
                    SizedBox(
                      width: Get.width * 0.6,
                      child: Text(
                        message,
                        // overflow: TextOverflow.ellipsis,
                        style: textDisplaySuperSmall(
                          color: color ?? Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            iconTrailing ?? const SizedBox.shrink()
          ],
        ),
      );
    },
  );
}
