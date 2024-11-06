import 'package:flower_shop/pages/register_page.dart';
import 'package:flower_shop/widgets/customAppbar.dart';
import 'package:flower_shop/widgets/custom_button.dart';
import 'package:flower_shop/widgets/custom_link_text.dart';
import 'package:flower_shop/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomAppbar(
          title: 'Sign in',
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
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
                      text: 'Sign in',
                      onTap: () {},
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    CustomLinkText(
                      text: 'Forgot Password?',
                      onTap: () {},
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Do not have an account? '),
                        CustomLinkText(
                          text: 'Sign Up',
                          onTap: () {
                            Navigator.of(context).pushNamed(RegisterPage.id);
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
