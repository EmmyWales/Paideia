import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paideia/widgets/custombutton.dart';
import 'package:paideia/widgets/customcontainer.dart';
import 'package:paideia/widgets/textfield.dart';

import '../../utils/colors.dart';
import '../../widgets/text_widget.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        foregroundColor: AppColor.primary,
        backgroundColor: AppColor.white,
      ),
      body: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: Form(
          // key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Container(
                    height: 120,
                    width: 180,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            "assets/welcomecat.png",
                          ),
                          fit: BoxFit.fill),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const BaseText(
                  text: "Welcome Back!",
                  size: 24,
                  weight: FontWeight.w500,
                ),
                const SizedBox(
                  height: 10,
                ),
                const BaseText(
                  text: "Email/Phone number",
                  weight: FontWeight.w400,
                  size: 18,
                ),
                CustomTextFormField(
                  controller: _email,
                  hintText: "Enter your email or phone number",
                ),
                const SizedBox(
                  height: 20,
                ),
                const BaseText(
                  text: "Password",
                  weight: FontWeight.w400,
                  size: 18,
                ),
                CustomTextFormField(
                  controller: _password,
                  hintText: "Enter Password",
                  suffixIcon: Icon(Icons.visibility),
                  onChanged: (value) {},
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: TextButton(
                    onPressed: () {},
                    child: const BaseText(
                      text: "Forget Password?",
                      weight: FontWeight.w400,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const CustomButton(),
                const SizedBox(
                  height: 10,
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                          text: "Don’t have an account?",
                          style: GoogleFonts.poppins(
                              color: AppColor.black,
                              fontSize: 12,
                              fontWeight: FontWeight.w500)),
                      TextSpan(
                          text: "Sign Up",
                          style: GoogleFonts.poppins(
                              color: AppColor.primary,
                              fontSize: 12,
                              fontWeight: FontWeight.w500)),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 1,
                          color: AppColor.black,
                        ),
                      ),
                      const SizedBox(width: 16),
                      BaseText(
                          text: "Or continue with",
                          size: 16,
                          weight: FontWeight.w500,
                          color: AppColor.black),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Container(
                          height: 1,
                          color: AppColor.black,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CusomContainer(
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 30,
                                width: 30,
                                child: Image.asset(
                                  "assets/google.png",
                                  fit: BoxFit.fill,
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              BaseText(
                                text: "Google",
                                weight: FontWeight.w400,
                                size: 18,
                                color: AppColor.black,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    CusomContainer(
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 30,
                                width: 30,
                                child: Image.asset(
                                  "assets/facebook.png",
                                  fit: BoxFit.fill,
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              BaseText(
                                text: "Facebook",
                                weight: FontWeight.w400,
                                size: 18,
                                color: AppColor.black,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
