import 'package:freezed_annotation/freezed_annotation.dart';
part 'main_failure .freezed.dart';

@freezed
class Mainfailure with _$Mainfailure {
  const factory Mainfailure.clineFailure() = _clineFailure;
  const factory Mainfailure.serverFailure() = _serverFailure;
}
