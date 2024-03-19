import 'package:equatable/equatable.dart';

class SearchModel {
  final num nextPage;
  final num totalPage;
  final List<SearchUIModel> uiModel;

  SearchModel({
    required this.nextPage,
    required this.totalPage,
    required this.uiModel,
  });
}

class SearchUIModel extends Equatable {
  final String image;
  final String id;
  final String title;
  final String subTitle;

  const SearchUIModel({
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
