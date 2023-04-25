import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final Widget text;

  const InputField({
    Key? key,
     required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          text,
          text,

        ],
      ),
    );
  }
}
