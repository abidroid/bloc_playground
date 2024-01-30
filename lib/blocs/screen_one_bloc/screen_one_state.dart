part of 'screen_one_bloc.dart';

class ScreenOneState extends Equatable {
  final bool switchOn;
  final double sliderValue;
  const ScreenOneState({required this.switchOn, required this.sliderValue});

  @override
  List<Object> get props => [switchOn, sliderValue];
}
