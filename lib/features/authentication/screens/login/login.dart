import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet_shop/common/styles/spacing_styles.dart';
import 'package:pet_shop/common/widgets_login_signup/form_divider.dart';
import 'package:pet_shop/common/widgets_login_signup/social_buttons.dart';
import 'package:pet_shop/features/authentication/screens/login/widgets/login_form.dart';
import 'package:pet_shop/features/authentication/screens/login/widgets/login_header.dart';
import 'package:pet_shop/utils/constants/sizes.dart';
import 'package:pet_shop/utils/constants/text_strings.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //final dark = THelperFunctions.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              /// Login Header
              const TLoginHeader(),

              /// Login Form
              const TLoginForm(),

              /// Divider
              TFormDivider(dividerText: TTexts.orSignInWith.capitalize!),
              const SizedBox(height: TSizes.spaceBtwSections),

              /// Footer
              const TSocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}
