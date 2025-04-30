import 'package:flutter/material.dart';
import 'package:jp_app/src/features/order/presentation/cake_bottomsheet.dart';
import 'package:jp_app/src/features/order/domain/category_button.dart';
import 'package:jp_app/src/features/order/domain/angi_burger_card.dart';
import 'package:jp_app/src/features/order/domain/cake_card.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
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
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      spacing: 16,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(
                              () {
                                showModalBottomSheet(
                                    context: context,
                                    backgroundColor: Colors.transparent,
                                    isScrollControlled: true,
                                    builder: (BuildContext context) {
                                      return CakeBottomsheet(
                                          iceImage:
                                              "assets/images/cupkake_cat.png",
                                          likenumber: 200,
                                          iceName: "Mogli´s Cup",
                                          price: 8.99);
                                    });
                              },
                            );
                          },
                          child: CakeCard(
                              iceImage: "assets/images/cupkake_cat.png",
                              iceName: "Mogli´s Cup",
                              descriptionText: "Strawberry ice cream",
                              cost: "8.99",
                              likeNumber: "200"),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(
                              () {
                                showModalBottomSheet(
                                    context: context,
                                    backgroundColor: Colors.transparent,
                                    isScrollControlled: true,
                                    builder: (BuildContext context) {
                                      return CakeBottomsheet(
                                          iceImage:
                                              "assets/images/icecream.png",
                                          likenumber: 165,
                                          iceName: "Balu´s Cup",
                                          price: 8.99);
                                    });
                              },
                            );
                          },
                          child: CakeCard(
                              iceImage: "assets/images/icecream.png",
                              iceName: "Balu´s Cup",
                              descriptionText: "Pistachio ice cream",
                              cost: "8.99",
                              likeNumber: "165"),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(
                              () {
                                showModalBottomSheet(
                                    context: context,
                                    backgroundColor: Colors.transparent,
                                    isScrollControlled: true,
                                    builder: (BuildContext context) {
                                      return CakeBottomsheet(
                                          iceImage:
                                              "assets/images/icecream_stick.png",
                                          likenumber: 310,
                                          iceName: "Mogli´s Cup",
                                          price: 3.99);
                                    });
                              },
                            );
                          },
                          child: CakeCard(
                              iceImage: "assets/images/icecream_stick.png",
                              iceName: "Smiling David",
                              descriptionText: "Vanilla choc ice cream",
                              cost: "3.99",
                              likeNumber: "310"),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(
                              () {
                                showModalBottomSheet(
                                    context: context,
                                    backgroundColor: Colors.transparent,
                                    isScrollControlled: true,
                                    builder: (BuildContext context) {
                                      return CakeBottomsheet(
                                          iceImage:
                                              "assets/images/icecream_cone.png",
                                          likenumber: 290,
                                          iceName: "Kai in a Cone",
                                          price: 3.99);
                                    });
                              },
                            );
                          },
                          child: CakeCard(
                              iceImage: "assets/images/icecream_cone.png",
                              iceName: "Kai in a Cone",
                              descriptionText: "Carameled ice cream",
                              cost: "3.99",
                              likeNumber: "290"),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
