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
  final String image;
  final String id;
  final String title;
  final String subTitle;

  const PlaylistUIModel({
    required this.image,
    required this.id,
    required this.title,
    required this.subTitle,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [
        image,
        id,
        title,
        subTitle,
      ];
}
