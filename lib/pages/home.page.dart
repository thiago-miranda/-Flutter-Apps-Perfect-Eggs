import 'package:flutter/material.dart';
import 'package:perfect_eggs/blocs/app.bloc.dart';
import 'package:perfect_eggs/widgets/action-buttons.widget.dart';
import 'package:perfect_eggs/widgets/eggs.widget.dart';
import 'package:perfect_eggs/widgets/progress.widget.dart';
import 'package:perfect_eggs/widgets/type-buttons.widget.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = Provider.of<AppBloc>(context);

    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 60),
          Text(bloc.selected),
          Text(bloc.state),
          Text(bloc.time.toString()),
          Text(bloc.seconds.toString()),
          const SizedBox(height: 10),
          const TypeButtons(),
          const SizedBox(height: 10),
          const ActionButtons(),
          const SizedBox(height: 10),
          const Progress(),
          const SizedBox(height: 10),
          const Eggs(),
        ],
      ),
    );
  }
}
