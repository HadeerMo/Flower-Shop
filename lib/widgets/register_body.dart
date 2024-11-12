import 'package:flower_shop/widgets/customAppbar.dart';
import 'package:flower_shop/widgets/custom_button.dart';
import 'package:flower_shop/widgets/custom_link_text.dart';
import 'package:flower_shop/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class RegisterBody extends StatelessWidget {
  const RegisterBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomAppbar(
          title: 'Register',
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const CustomerInputField(
                      hint: 'Enter Your UserName:',
                      icon: Icons.person,
                      keyboardType: TextInputType.text,
                    ),
                    const SizedBox(
                      height: 27,
                    ),
                    const CustomerInputField(
                      hint: 'Enter Your Email:',
                      icon: Icons.email,
                      keyboardType: TextInputType.emailAddress,
                    ),
                    const SizedBox(
                      height: 27,
                    ),
                    const CustomerInputField(
                      hint: 'Enter Your Password:',
                      icon: Icons.visibility_off,
                      secure: true,
                      keyboardType: TextInputType.visiblePassword,
                    ),
                    const SizedBox(
                      height: 27,
                    ),
                    CustomButton(
                      text: 'Register',
                      onTap: () {},
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Already have an account? '),
                        CustomLinkText(
                          text: 'Sign In',
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
