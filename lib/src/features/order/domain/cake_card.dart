import 'package:flutter/material.dart';

class CakeCard extends StatelessWidget {
  const CakeCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 180,
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                const Color.fromRGBO(255, 255, 255, 0),
                const Color.fromRGBO(144, 140, 245, 1),
                const Color.fromRGBO(142, 91, 234, 1),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              color: const Color.fromARGB(255, 180, 178, 178),
              width: 1,
            )),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Image.asset(
                  "assets/images/cupkake_cat.png",
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Mogli´s Cup",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w700),
                  )),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Strawberry ice cream",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.attach_money,
                        color: Colors.white,
                      ),
                      Text(
                        "8.99",
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
                        "200",
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
