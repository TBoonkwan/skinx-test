import 'package:equatable/equatable.dart';

class PlaylistModel {
  final num nextPage;
  final num totalPage;
  final List<PlaylistUIModel> uiModel;

  PlaylistModel({
    required this.nextPage,
    required this.totalPage,
    required this.uiModel,
  });
}

class PlaylistUIModel extends Equatable {
  final String title;
  final List<MyTask> taskList;

  const PlaylistUIModel({
    required this.title,
    required this.taskList,
  });

  @override
  List<Object?> get props => [title, taskList];
}

class MyTask extends Equatable {
  final String id;
  final String title;
  final String description;

  MyTask({
    required this.id,
    required this.title,
    required this.description,
  });

  @override
  List<Object?> get props => [id, title, description];
}
