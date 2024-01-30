import 'package:bloc_playground/blocs/screen_one_bloc/screen_one_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Screen One'),
        ),
        body: ListView(
          children: [
            BlocBuilder<ScreenOneBloc, ScreenOneState>(
              builder: (context, state) {
                return Icon(
                  Icons.lightbulb,
                  size: 200,
                  color: state.switchOn ? Colors.amber : Colors.black,
                );
              },
            ),
            BlocBuilder<ScreenOneBloc, ScreenOneState>(
              buildWhen: (previous, current) {
                return previous.switchOn != current.switchOn;
              },
              builder: (context, state) {
                print('Switched');
                return Switch(
                  value: state.switchOn,
                  onChanged: (isChecked) {
                    context.read<ScreenOneBloc>().add(ScreenOneSwitchEvent());
                  },
                );
              },
            ),
            BlocBuilder<ScreenOneBloc, ScreenOneState>(
              builder: (context, state) {
                return Slider(
                    value: state.sliderValue,
                    onChanged: (newValue) {
                      context.read<ScreenOneBloc>().add(ScreenOneSliderEvent(sliderValue: newValue));
                    });
              },
            ),
            BlocBuilder<ScreenOneBloc, ScreenOneState>(
              buildWhen: (previous, current) {
                return previous.sliderValue != current.sliderValue;
              },
              builder: (context, state) {
                print('Color changed');
                return Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  height: 200,
                  color: Colors.red.withOpacity(state.sliderValue),
                );
              },
            ),
          ],
        ));
  }
}
