import 'package:equatable/equatable.dart';

class AlbumModel {
  final num nextPage;
  final num totalPage;
  final AlbumUIModel uiModel;

  AlbumModel({
    required this.nextPage,
    required this.totalPage,
    required this.uiModel,
  });
}

class AlbumUIModel extends Equatable {
  final String image;
  final String id;
  final String title;
  final String subTitle;

  const AlbumUIModel({
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
