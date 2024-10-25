import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:pet_shop/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:pet_shop/common/widgets/custom_shapes/curved_edges/curved_edges.dart';
import 'package:pet_shop/utils/constants/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ClipPath(
              clipper: TCustopmCurvedEdges(),
              child: Container(
                  color: TColors.primary,
                  padding: const EdgeInsets.all(0),
                  child: SizedBox(
                    height: 350,
                    child: Stack(
                      children: [
                        Positioned(
                          top: -150,
                          right: -250,
                          child: TCircularContainer(
                            backgroundColor: TColors.white.withOpacity(0.1),
                            height: 350,
                          ),
                        ),
                        Positioned(
                          top: 100,
                          right: -300,
                          child: TCircularContainer(
                            backgroundColor: TColors.white.withOpacity(0.1),
                            height: 350,
                          ),
                        ),
                      ],
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
