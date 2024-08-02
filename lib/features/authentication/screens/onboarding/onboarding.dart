import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:pet_shop/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:pet_shop/features/authentication/screens/onboarding/widgets/onboarding_circular_button.dart';
import 'package:pet_shop/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:pet_shop/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:pet_shop/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:pet_shop/utils/constants/text_strings.dart';
import 'package:pet_shop/utils/constants/image_strings.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //back end
    final controller = Get.put(OnboardingController());

    return Scaffold(
      body: Stack(
        children: [
          // horizontal scrolable page
          PageView(
              controller: controller.pageController,
              onPageChanged: controller.updatePageIndicator,
              children: const [
                OnBoardingPage(
                    image: TImages.onBoardingImage1,
                    title: TTexts.onBoardingTitle1,
                    subtitle: TTexts.onBoardingSubTitle1),
                OnBoardingPage(
                    image: TImages.onBoardingImage2,
                    title: TTexts.onBoardingTitle2,
                    subtitle: TTexts.onBoardingSubTitle2),
                OnBoardingPage(
                    image: TImages.onBoardingImage3,
                    title: TTexts.onBoardingTitle3,
                    subtitle: TTexts.onBoardingSubTitle3),
              ]),

          // skip button
          const OnBoardingSkip(),

          // Dot navigation smooth page indicator
          const OnBoardingDotNavigation(),

          // circular button
          const OnBoardingNextButton()
        ],
      ),
    );
  }
}
