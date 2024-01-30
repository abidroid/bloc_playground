part of 'screen_one_bloc.dart';

class ScreenOneState extends Equatable {
  final bool switchOn;
  final double sliderValue;
  final String selectedDropdownValue;
  const ScreenOneState({
    required this.switchOn,
    required this.sliderValue,
    required this.selectedDropdownValue,
  });

  @override
  List<Object> get props => [switchOn, sliderValue, selectedDropdownValue];
}
