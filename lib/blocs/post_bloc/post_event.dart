part of 'post_bloc.dart';

abstract class PostEvent extends Equatable {
  const PostEvent();

  @override
  List<Object?> get props => [];
}

class SubmitPostEvent extends PostEvent {
  final String title;
  final String body;

  const SubmitPostEvent({
    required this.title,
    required this.body,
  });
}
