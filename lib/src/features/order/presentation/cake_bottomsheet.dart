import 'package:flutter/material.dart';
import 'package:jp_app/src/features/order/domain/size_container.dart';

class CakeBottomsheet extends StatelessWidget {
  final String iceImage;
  final int likenumber;
  final String iceName;
  final double price;
  const CakeBottomsheet(
      {super.key,
      required this.iceImage,
      required this.likenumber,
      required this.iceName,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 120, 0, 0),
            child: Container(
              width: double.infinity,
              height: double.infinity,
              color: Colors.black,
            ),
          ),
          Column(
            children: [
              Image.asset("$iceImage"),
              SizedBox(height: 280),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizeContainer(
                          containerColor: const Color.fromARGB(255, 64, 63, 63),
                          radiusTopLeft: 8,
                          radiusTopRight: 0,
                          radiusBottomLeft: 8,
                          radiusBottomRight: 0,
                          textColor: Colors.grey,
                          text: "Small"),
                      SizeContainer(
                          containerColor: Color.fromARGB(255, 64, 63, 63),
                          radiusTopLeft: 0,
                          radiusTopRight: 0,
                          radiusBottomLeft: 0,
                          textColor: Colors.grey,
                          radiusBottomRight: 0,
                          text: "Medium"),
                      SizeContainer(
                          containerColor: Color.fromARGB(255, 101, 99, 99),
                          radiusTopLeft: 8,
                          radiusTopRight: 8,
                          radiusBottomLeft: 8,
                          radiusBottomRight: 8,
                          textColor: Colors.white,
                          text: "Large"),
                    ],
                  ),
                  Row(
                    spacing: 8,
                    children: [
                      Icon(
                        Icons.remove_circle_outline,
                        color: Colors.grey,
                        size: 48,
                      ),
                      Text(
                        "1",
                        style: TextStyle(color: Colors.white, fontSize: 32),
                      ),
                      Icon(
                        Icons.add_circle_outline,
                        color: Colors.grey,
                        size: 48,
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 350,
                height: 50,
                child: FilledButton(
                  style: FilledButton.styleFrom(
                      backgroundColor: Color.fromRGBO(233, 112, 196, 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                  onPressed: () {},
                  child: Text(
                    "Add to order € $price",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
          Center(
            child: SizedBox(
              width: 350,
              height: 320,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black.withAlpha(50),
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: Colors.white.withAlpha(100)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(
                            Icons.favorite_border,
                            color: const Color.fromARGB(255, 222, 220, 220),
                          ),
                          Text(
                            "$likenumber",
                            style: TextStyle(
                                color: const Color.fromARGB(255, 222, 220, 220),
                                fontSize: 18),
                          ),
                        ],
                      ),
                      Text(
                        iceName,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo.",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        "€ $price",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                      Divider(
                        color: const Color.fromARGB(255, 187, 185, 185),
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "Incredients",
                                style: TextStyle(color: Colors.white),
                              ),
                              SizedBox(width: 10),
                              Text(
                                "Reviews",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                          SizedBox(height: 8),
                          Row(
                            children: [
                              Row(
                                spacing: 8,
                                children: [
                                  Image.asset(
                                    "assets/images/Gluten 1.png",
                                    width: 20,
                                    height: 20,
                                    color: Colors.white,
                                  ),
                                  Image.asset(
                                    "assets/images/Sugar.png",
                                    width: 20,
                                    height: 20,
                                    color: Colors.white,
                                  ),
                                  Image.asset(
                                    "assets/images/LowFat.png",
                                    width: 20,
                                    height: 20,
                                    color: Colors.white,
                                  ),
                                  Image.asset(
                                    "assets/images/Kcal.png",
                                    width: 20,
                                    height: 20,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                              SizedBox(width: 75),
                              Row(
                                children: [
                                  Icon(Icons.star, color: Colors.white),
                                  Icon(Icons.star, color: Colors.white),
                                  Icon(Icons.star, color: Colors.white),
                                  Icon(Icons.star, color: Colors.white),
                                  Icon(Icons.star_border, color: Colors.white),
                                  SizedBox(width: 8),
                                  Text("4.0",
                                      style: TextStyle(color: Colors.white)),
                                ],
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
