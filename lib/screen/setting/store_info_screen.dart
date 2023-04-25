import 'package:flutter/material.dart';
import 'package:vielab/widget/app_bar_with_back_icon_and_text.dart';
import 'package:vielab/widget/app_text_field.dart';
import 'package:vielab/widget/input_field.dart';

import '../../colors/colors.dart';
import '../../theme/text_theme.dart';

class StoreInformationScreen extends StatelessWidget {
  const StoreInformationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var storeController = TextEditingController();
    var addressController = TextEditingController();
    return Scaffold(
      body: SizedBox(
        height: double.maxFinite,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              AppBarWithBackIcon(
                  text: Text(
                "Store Information",
                style: AppTextStyle.appBarTextTheme,
              )),
              const SizedBox(
                height: 30,
              ),
              AppTextField(
                textEditingController: storeController,
                hintText: 'Store Name',
              ),
              const SizedBox(
                height: 12,
              ),
              AppTextField(
                textEditingController: addressController,
                hintText: 'Store Address',
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
