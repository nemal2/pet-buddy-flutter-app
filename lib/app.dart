import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet_shop/features/authentication/screens/onboarding.dart';
import 'package:pet_shop/utils/theme/theme.dart';

// to setup themes, initialize bindings,.....

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      home: const OnboardingScreen(),
    );
  }
}