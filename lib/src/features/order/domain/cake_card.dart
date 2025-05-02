import 'package:flutter/material.dart';

class CakeCard extends StatelessWidget {
  final String iceImage;
  final String iceName;
  final String descriptionText;
  final String cost;
  final String likeNumber;

  const CakeCard({
    super.key,
    required this.iceImage,
    required this.iceName,
    required this.descriptionText,
    required this.cost,
    required this.likeNumber,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 180,
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                const Color.fromRGBO(255, 255, 255, 0.2),
                const Color.fromRGBO(144, 140, 245, 1),
                const Color.fromRGBO(142, 91, 234, 1),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              color: const Color.fromARGB(255, 61, 60, 60),
              width: 1,
            )),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Image.asset(
                  iceImage,
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    iceName,
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w700),
                  )),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  descriptionText,
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        "₳",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      Text(
                        cost,
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.favorite_border,
                        color: Colors.white,
                      ),
                      Text(
                        likeNumber,
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
