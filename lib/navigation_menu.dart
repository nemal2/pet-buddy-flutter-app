import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pet_shop/features/shop/screens/home/home.dart';
import 'package:pet_shop/utils/constants/colors.dart';
import 'package:pet_shop/utils/constants/text_strings.dart';
import 'package:pet_shop/utils/helpers/helper_functions.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());

    final darkMode = THelperFunctions.isDarkMode(context);

    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
            height: 80,
            elevation: 0,
            selectedIndex: controller.selectedIndex.value,
            backgroundColor: darkMode ? TColors.black : TColors.white,
            indicatorColor: darkMode
                ? TColors.white.withOpacity(0.1)
                : TColors.black.withOpacity(0.1),
            onDestinationSelected: (index) =>
                controller.selectedIndex.value = index,
            destinations: const [
              NavigationDestination(
                icon: Icon(Iconsax.home),
                label: 'Home',
              ),
              NavigationDestination(
                icon: Icon(Iconsax.pet),
                label: 'Pet',
              ),
              NavigationDestination(
                icon: Icon(Iconsax.shop),
                label: 'Shop',
              ),
              NavigationDestination(
                icon: Icon(Iconsax.user),
                label: 'Profile',
              ),
            ]),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    const HomeScreen(),
    Container(
      color: Colors.green,
    ),
    Container(
      color: Colors.blue,
    ),
    Container(
      color: Colors.yellow,
    )
  ];
}
