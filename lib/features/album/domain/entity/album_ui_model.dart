import 'package:equatable/equatable.dart';

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
