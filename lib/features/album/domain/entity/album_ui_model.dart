import 'package:equatable/equatable.dart';

class AlbumUIModel extends Equatable {
  final String logo;
  final String id;
  final String artistName;
  final String albumName;
  final String releaseDate;
  final List<AlbumTrack> tracks;

  const AlbumUIModel({
    required this.logo,
    required this.id,
    required this.artistName,
    required this.albumName,
    required this.releaseDate,
    required this.tracks,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [
        logo,
        id,
        artistName,
        albumName,
        releaseDate,
        tracks,
      ];
}

class AlbumTrack extends Equatable {
  final String id;
  final String trackNumber;

  final String title;
  final String subtitle;

  AlbumTrack({
    required this.id,
    required this.trackNumber,
    required this.title,
    required this.subtitle,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [
        id,
        trackNumber,
        title,
        subtitle,
      ];
}
