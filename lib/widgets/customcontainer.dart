import 'package:flutter/material.dart';
import 'package:paideia/utils/colors.dart';

class CusomContainer extends StatelessWidget {
  Widget? child;
  CusomContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: MediaQuery.sizeOf(context).width/2.5,
      child: child,
      decoration: BoxDecoration(
        color: AppColor.container,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
