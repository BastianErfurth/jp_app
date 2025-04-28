import 'package:flutter/material.dart';
import 'package:jp_app/src/features/order/domain/category_button.dart';
import 'package:jp_app/src/features/order/domain/angi_burger_card.dart';
import 'package:jp_app/src/features/order/domain/cake_card.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              "assets/images/bg_mainscreen.png",
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 72, 16, 16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Choose Your Favorite",
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "Snack",
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      spacing: 8,
                      children: [
                        CategoryButton(
                            frontIcon: Icons.takeout_dining,
                            buttonText: "All categories",
                            textColor: Colors.white54,
                            backIcon: Icons.expand_more,
                            opacityNumber: 54),
                        CategoryButton(
                          buttonText: "Salty",
                          opacityNumber: 150,
                          textColor: Colors.black,
                        ),
                        CategoryButton(
                            buttonText: "Sweet",
                            opacityNumber: 54,
                            textColor: Colors.white54),
                        CategoryButton(
                            buttonText: "Dark Choco",
                            opacityNumber: 54,
                            textColor: Colors.white54),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 42,
                  ),
                  AngiBurgerCard(),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "We Recommend",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  CakeCard()
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
