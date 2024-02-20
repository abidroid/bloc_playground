import 'package:bloc_playground/models/post_model.dart';
import 'package:bloc_playground/repos/repositories.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'post_event.dart';
part 'post_state.dart';

class PostBloc extends Bloc<PostEvent, PostState> {
  PostBloc() : super(PostInitialState()) {
    on<PostEvent>((event, emit) async {
      if (event is SubmitPostEvent) {
        emit(PostSubmittingState());

        try {
          final postModel = await PostRepository().submitPost(title: event.title, body: event.body);

          emit(PostSubmittedState(postModel: postModel));
        } catch (e) {
          emit(PostErrorState(message: e.toString()));
        }
      }
    });
  }
}
