part of 'post_bloc.dart';

abstract class PostState extends Equatable {
  const PostState();
  @override
  List<Object?> get props => [];
}

class PostInitialState extends PostState {}

class PostSubmittingState extends PostState {}

class PostSubmittedState extends PostState {
  final PostModel postModel;

  const PostSubmittedState({required this.postModel});
}

class PostErrorState extends PostState {
  final String message;

  const PostErrorState({required this.message});
}
