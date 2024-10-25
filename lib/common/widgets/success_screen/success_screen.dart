import 'package:flutter/material.dart';
import 'package:pet_shop/common/styles/spacing_styles.dart';
import 'package:pet_shop/utils/constants/sizes.dart';
import 'package:pet_shop/utils/constants/text_strings.dart';
import 'package:pet_shop/utils/helpers/helper_functions.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen(
      {super.key,
      required this.image,
      required this.title,
      required this.subTitle,
      required this.onPressed});

  final String image, title, subTitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: TSpacingStyle.paddingWithAppBarHeight * 2,
        child: Column(
          children: [
            //image
            Image(
              image: AssetImage(image),
              width: THelperFunctions.screenWidth() * 0.6,
            ),

            //title
            Text(title,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center),
            const SizedBox(height: TSizes.spaceBtwItems),

            Text(subTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center),

            const SizedBox(height: TSizes.spaceBtwSections),

            //button
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: onPressed,
                  child: const Text(TTexts.tContinue),
                )),
          ],
        ),
      ),
    ));
  }
}
