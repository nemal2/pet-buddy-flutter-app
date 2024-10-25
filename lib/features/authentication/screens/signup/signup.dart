import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:pet_shop/common/widgets_login_signup/form_divider.dart';
import 'package:pet_shop/common/widgets_login_signup/social_buttons.dart';
import 'package:pet_shop/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:pet_shop/utils/constants/sizes.dart';
import 'package:pet_shop/utils/constants/text_strings.dart';
import 'package:pet_shop/utils/helpers/helper_functions.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ///title
            Text(TTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium),
            const SizedBox(height: TSizes.spaceBtwSections),

            ///form
            const TSignupForm(),

            ///Divider
            TFormDivider(dividerText: TTexts.orSignUpWith.capitalize!),

            ///social buttons
            const TSocialButtons(),
          ],
        ),
      )),
    );
  }
}
