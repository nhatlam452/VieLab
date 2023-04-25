import 'package:flutter/material.dart';

class AppBarWithBackIcon extends StatelessWidget {
  final Widget text;

  const AppBarWithBackIcon({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back_ios)),
        text
      ],
    );
  }
}
