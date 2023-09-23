import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paideia/utils/colors.dart';

class CustomTextFormField extends StatefulWidget {
  final TextEditingController? controller;
  final String? hintText;
  final double? fontSize;
  final Color? textColor;
  final Color? borderColor;
  final double borderRadius;
  final void Function(String?)? onChanged;
  // final Icon? suffixIcon;
  final double? height;
  final double? width;
  final Widget? suffixIcon;
  final Widget? preffixIcon;

  const CustomTextFormField({
    this.height,
    this.width,
    this.controller,
    this.suffixIcon,
    this.hintText,
    this.fontSize,
    this.textColor,
    this.borderColor,
    this.onChanged,
    this.borderRadius = 10.0,
    this.preffixIcon,
  });

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool _obscure = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      width: widget.width,
      decoration: BoxDecoration(
        color: AppColor.container,
        border:
            Border.all(color: widget.borderColor ?? const Color(0XFFD9D9D9)),
        borderRadius: BorderRadius.circular(widget.borderRadius),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10.0),
        child: TextField(
          controller: widget.controller,
          obscureText: _obscure,
          onChanged: widget.onChanged ?? (s) {},
          style: GoogleFonts.poppins(
              fontSize: widget.fontSize, color: widget.textColor),
          decoration: InputDecoration(
              hintText: widget.hintText,
              border: InputBorder.none,
              prefixIcon: widget.preffixIcon,
              suffixIcon: widget.suffixIcon != null
                  ? IconButton(
                      alignment: Alignment.bottomCenter,
                      onPressed: () {
                        setState(() {
                          _obscure = !_obscure;
                        });
                      },
                      icon: Icon(_obscure
                          ? Icons.visibility_outlined
                          : Icons.visibility_off_outlined),
                      iconSize: 24,
                    )
                  : null),
        ),
      ),
    );
  }
}
