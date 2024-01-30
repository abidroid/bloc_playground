part of 'screen_one_bloc.dart';

sealed class ScreenOneEvent extends Equatable {
  const ScreenOneEvent();

  @override
  List<Object> get props => [];
}

class ScreenOneSwitchEvent extends ScreenOneEvent {}

class ScreenOneSliderEvent extends ScreenOneEvent {
  final double sliderValue;
  const ScreenOneSliderEvent({required this.sliderValue});
}

class ScreenOneDropdownEvent extends ScreenOneEvent {
  final String selectedValue;
  const ScreenOneDropdownEvent({required this.selectedValue});
}
