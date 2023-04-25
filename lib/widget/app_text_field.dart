import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vielab/theme/text_theme.dart';

import '../colors/colors.dart';

class AppTextField extends StatelessWidget {
  final TextEditingController textEditingController;
  final String hintText;

  bool isOb;

  AppTextField(
      {Key? key,
      required this.textEditingController,
      required this.hintText,
      this.isOb = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          hintText,
          style: AppTextStyle.appBarTextTheme.copyWith(fontSize: 16),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(6),
              boxShadow: [
                BoxShadow(
                    blurRadius: 3,
                    spreadRadius: 1,
                    offset: Offset(1, 1),
                    color: Colors.grey.withOpacity(0.2))
              ]),
          child: TextField(
              obscureText: isOb ? true : false,
              cursorColor: AppColors.mainColor,
              controller: textEditingController,
              decoration: InputDecoration(
                hintText: hintText,
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6),
                    borderSide: const BorderSide(
                        width: 1.0, color: AppColors.disableColor)),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(6),
                  borderSide: const BorderSide(
                      width: 1.0, color: AppColors.disableColor),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
              )),
        ),
      ],
    );
  }
}
