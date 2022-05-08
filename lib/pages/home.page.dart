import 'package:flutter/material.dart';
import 'package:perfect_eggs/widgets/type-buttons.widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          SizedBox(
            height: 60,
          ),
          TypeButtons(),
        ],
      ),
    );
  }
}
