import 'package:flutter/material.dart';

import '../colors/colors.dart';

class SettingView extends StatelessWidget {
  final Icon icon;
  final Widget text;
  final VoidCallback? action;

  const SettingView(
      {Key? key, required this.icon, required this.text, required this.action})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            icon,
            const SizedBox(
              width: 5,
            ),
            text,
          ],
        ),
        GestureDetector(
            onTap:action,
            child: const Icon(
              Icons.navigate_next,
              color: AppColors.disableColor,
            ))
      ],
    );
  }
}
