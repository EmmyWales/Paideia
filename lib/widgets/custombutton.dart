import 'package:flutter/material.dart';
import 'package:paideia/utils/colors.dart';
import 'package:paideia/widgets/text_widget.dart';

class CustomButton extends StatefulWidget {
  const CustomButton({super.key});

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: MediaQuery.sizeOf(context).width,
      decoration: BoxDecoration(
        color: AppColor.primary,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: BaseText(
          text: "Sign in",
          size: 18,
          weight: FontWeight.w500,
          color: AppColor.white,
        ),
      ),
    );
  }
}
