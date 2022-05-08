import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:perfect_eggs/pages/home.page.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  Future delay(context) async {
    await Future.delayed(
      const Duration(
        milliseconds: 3000,
      ),
      () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const HomePage(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    // delay(context);
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 60),
          Container(
            width: double.infinity,
            height: 300,
            child: const FlareActor(
              "assets/animations/egg-cooking.flr",
              alignment: Alignment.center,
              fit: BoxFit.contain,
              isPaused: false,
              animation: "start",
            ),
          ),
        ],
      ),
    );
  }
}
