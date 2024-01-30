import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'screen_one_event.dart';
part 'screen_one_state.dart';

class ScreenOneBloc extends Bloc<ScreenOneEvent, ScreenOneState> {
  ScreenOneBloc() : super(const ScreenOneState(switchOn: false, sliderValue: 0)) {
    on<ScreenOneEvent>((event, emit) {
      if (event is ScreenOneSwitchEvent) {
        emit(ScreenOneState(switchOn: !state.switchOn, sliderValue: state.sliderValue));
      }

      if (event is ScreenOneSliderEvent) {
        emit(ScreenOneState(switchOn: state.switchOn, sliderValue: event.sliderValue));
      }
    });
  }
}
