import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:pet_shop/common/widgets/success_screen/success_screen.dart';
import 'package:pet_shop/features/authentication/screens/login/login.dart';
import 'package:pet_shop/utils/constants/image_strings.dart';
import 'package:pet_shop/utils/constants/sizes.dart';
import 'package:pet_shop/utils/constants/text_strings.dart';
import 'package:pet_shop/utils/helpers/helper_functions.dart';

class VerifyEmailScreeen extends StatelessWidget {
  const VerifyEmailScreeen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
                onPressed: () => Get.offAll(() => const LoginScreen()),
                icon: const Icon(CupertinoIcons.clear))
          ],
        ),
        body: SingleChildScrollView(
          //padding
          child: Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  //image
                  Image(
                    image: const AssetImage(TImages.deliveredEmailIllustration),
                    width: THelperFunctions.screenWidth() * 0.6,
                  ),

                  //title
                  Text(TTexts.confirmEmail,
                      style: Theme.of(context).textTheme.headlineMedium,
                      textAlign: TextAlign.center),
                  const SizedBox(height: TSizes.spaceBtwItems),

                  Text('support@pet_shop.com',
                      style: Theme.of(context).textTheme.labelLarge,
                      textAlign: TextAlign.center),
                  const SizedBox(height: TSizes.spaceBtwItems),

                  Text(TTexts.confirmEmailSubTitle,
                      style: Theme.of(context).textTheme.labelMedium,
                      textAlign: TextAlign.center),

                  const SizedBox(height: TSizes.spaceBtwSections),

                  //buttons
                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () => Get.to(
                          () => SuccessScreen(
                            image: TImages.staticSuccessIllustration,
                            title: TTexts.yourAccountCreatedTitle,
                            subTitle: TTexts.yourAccountCreatedSubTitle,
                            onPressed: () => Get.to(() => const LoginScreen()),
                          ),
                        ),
                        child: const Text(TTexts.tContinue),
                      )),

                  const SizedBox(height: TSizes.spaceBtwItems),

                  SizedBox(
                      width: double.infinity,
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(TTexts.resendEmail),
                      ))
                ],
              )),
        ));
  }
}
