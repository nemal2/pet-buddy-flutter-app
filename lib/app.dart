import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet_shop/features/authentication/screens/onboarding/onboarding.dart';
import 'package:pet_shop/utils/theme/theme.dart';
import 'package:pet_shop/utils/constants/text_strings.dart';

// to setup themes, initialize bindings,.....

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: TTexts.appName,
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      home: const OnboardingScreen(),
    );
  }
}
