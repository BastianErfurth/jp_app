import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              "assets/images/bg_startscreen.png",
              fit: BoxFit.cover,
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 200),
              child: Image.asset(
                "assets/images/cupcake_chick.png",
                width: 450,
                height: 450,
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 200),
              child: Image.asset(
                "assets/images/snack_snack.png",
                width: 450,
                height: 450,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Padding(
              padding: const EdgeInsets.only(top: 500),
              child: Card(
                color: const Color.fromARGB(64, 0, 0, 0),
                child: Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Center(
                          child: Padding(
                        padding: const EdgeInsets.all(32.0),
                        child: Text(
                          "Feeling Snackish Today?",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      )),
                      Center(
                        child: Text(
                          "Explore Angi´s most popular snack selection and get instantly happy.",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      FilledButton(
                        style: FilledButton.styleFrom(
                            backgroundColor: Color.fromRGBO(233, 112, 196, 1),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            )),
                        onPressed: () {},
                        child: Text(
                          "Order now",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
