import 'package:flutter/material.dart';
import 'package:vielab/screen/setting/change_password_screen.dart';
import 'package:vielab/screen/setting/store_info_screen.dart';
import 'package:vielab/theme/text_theme.dart';
import 'package:vielab/widget/setting_view.dart';

import '../../colors/colors.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Text(
                "Setting",
                style: AppTextStyle.appBarTextTheme,
              ),
              const SizedBox(
                height: 40,
              ),
              SettingView(
                  icon: const Icon(
                    Icons.store,
                    color: AppColors.mainColor,
                  ),
                  text: Text("Store Information",
                      style: AppTextStyle.normalTextTheme),
                  action: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const StoreInformationScreen()));
                  }),
              const SizedBox(
                height: 30,
              ),
              SettingView(
                  icon: const Icon(
                    Icons.lock,
                    color: AppColors.mainColor,
                  ),
                  text:
                  Text("Change Password", style: AppTextStyle.normalTextTheme),
                  action: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const ChangePasswordScreen()));
                  }),
              const SizedBox(
                height: 30,
              ),
              SettingView(
                icon: const Icon(
                  Icons.logout,
                  color: AppColors.mainColor,
                ),
                text: Text("Log out", style: AppTextStyle.normalTextTheme),
                action: () {},
              ),
            ],
          ),
          Center(
            child: Column(children: [
              Text("Verison  : 0.1.1",style: AppTextStyle.normalTextTheme.copyWith(color: AppColors.disableColor)),
              SizedBox(height: 20,),
              Text("Develop by Vielab",style: AppTextStyle.normalTextTheme.copyWith(color: AppColors.disableColor),),

            ],),
          )
        ],
      ),
    );
  }
}
