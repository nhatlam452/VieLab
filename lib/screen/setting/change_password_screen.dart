import 'package:flutter/material.dart';
import 'package:vielab/widget/app_bar_with_back_icon_and_text.dart';
import 'package:vielab/widget/app_text_field.dart';
import 'package:vielab/widget/input_field.dart';

import '../../colors/colors.dart';
import '../../theme/text_theme.dart';

class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var currentPassword = TextEditingController();
    var newPassword = TextEditingController();
    var confirmNewPassword = TextEditingController();
    return Scaffold(
      body: SizedBox(
        height: double.maxFinite,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              AppBarWithBackIcon(
                  text: Text(
                "Change Password",
                style: AppTextStyle.appBarTextTheme,
              )),
              const SizedBox(
                height: 30,
              ),
              AppTextField(
                textEditingController: currentPassword,
                hintText: 'Current Password',
                isOb: true,
              ),
              const SizedBox(
                height: 12,
              ),
              AppTextField(
                textEditingController: newPassword,
                hintText: 'New Password',
                isOb: true,
              ),
              const SizedBox(
                height: 12,
              ),
              AppTextField(
                textEditingController: confirmNewPassword,
                hintText: 'Confirm New Password',
                isOb: true,

              ),
              Expanded(

                child: Center(
                  child: Container(
                    width: double.maxFinite,
                    height: 42,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: AppColors.mainColor),
                    child: Center(
                      child: Text(
                        "Update",
                        style: AppTextStyle.normalTextTheme
                            .copyWith(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
