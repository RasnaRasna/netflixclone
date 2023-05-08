import 'package:freezed_annotation/freezed_annotation.dart';
part 'downloads.freezed.dart';
part 'downloads.g.dart';

@freezed
class Dowmloads with _$Dowmloads {
  const factory Dowmloads({
    @JsonKey(name: "poster_path") required String? posterPath,
  }) = _Dowmloads;

  factory Dowmloads.fromJson(Map<String, dynamic> json) =>
      _$DowmloadsFromJson(json);
}
