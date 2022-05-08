import 'package:flutter/material.dart';
import 'package:perfect_eggs/widgets/button.widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            const SizedBox(
              height: 60,
            ),
            Button(label: "teste", selected: true, callback: () {}),
          ],
        ),
      ),
    );
  }
}
