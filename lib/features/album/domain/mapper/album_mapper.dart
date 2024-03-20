import 'package:skinx_test/extension/date_extension.dart';
import 'package:skinx_test/features/album/data/model/album_response.dart';
import 'package:skinx_test/features/album/domain/entity/album_ui_model.dart';

class AlbumMapper {
  AlbumUIModel? map({
    required AlbumResponse response,
  }) {
    final List<AlbumTrack> tracks = [];
    response.tracks?.items?.forEach((element) {
      final int duration =
          Duration(milliseconds: element.durationMs?.toInt() ?? 0).inMinutes;
      tracks.add(AlbumTrack(
        id: element.id ?? "",
        title: element.name ?? "",
        subtitle: "${response.artists?.first.name} : $duration",
        trackNumber: element.trackNumber.toString(),
      ));
    });

    final AlbumUIModel model = AlbumUIModel(
      id: response.id.toString(),
      logo: response.images?.first.url.toString() ?? "",
      artistName: response.artists?.first.name.toString() ?? "",
      albumName: response.name ?? "",
      releaseDate: DateTime.parse(response.releaseDate ?? "").formatYearOnly(),
      tracks: tracks,
    );

    return model;
  }
}
