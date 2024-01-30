part of 'screen_one_bloc.dart';

class ScreenOneState extends Equatable {
  final bool switchOn;
  final double sliderValue;
  final String selectedDropdownValue;

  const ScreenOneState({
    this.switchOn = false,
    this.sliderValue = 0,
    this.selectedDropdownValue = 'Peshawar',
  });

  ScreenOneState copyWith({bool? switchOn, double? sliderValue, String? selectedDropdownValue}) {
    return ScreenOneState(
      switchOn: switchOn ?? this.switchOn,
      sliderValue: sliderValue ?? this.sliderValue,
      selectedDropdownValue: selectedDropdownValue ?? this.selectedDropdownValue,
    );
  }

  @override
  List<Object> get props => [switchOn, sliderValue, selectedDropdownValue];
}
