import 'package:flutter/material.dart';
import 'package:perfect_eggs/blocs/app.bloc.dart';
import 'package:provider/provider.dart';

class Progress extends StatelessWidget {
  const Progress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = Provider.of<AppBloc>(context);

    return bloc.state == "cooking" ? progress(context, bloc) : const SizedBox();
  }

  Widget progress(context, bloc) {
    return Column(
      children: [
        Text(
          (bloc.time - bloc.seconds).toString(),
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 45,
          ),
          textAlign: TextAlign.center,
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: LinearProgressIndicator(
            value: bloc!.percent * 100,
            backgroundColor: Colors.transparent,
            valueColor: AlwaysStoppedAnimation<Color>(
              Theme.of(context).primaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
