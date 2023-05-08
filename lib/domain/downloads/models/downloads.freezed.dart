// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'downloads.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Dowmloads _$DowmloadsFromJson(Map<String, dynamic> json) {
  return _Dowmloads.fromJson(json);
}

/// @nodoc
mixin _$Dowmloads {
  @JsonKey(name: "poster_path")
  String? get posterPath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DowmloadsCopyWith<Dowmloads> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DowmloadsCopyWith<$Res> {
  factory $DowmloadsCopyWith(Dowmloads value, $Res Function(Dowmloads) then) =
      _$DowmloadsCopyWithImpl<$Res, Dowmloads>;
  @useResult
  $Res call({@JsonKey(name: "poster_path") String? posterPath});
}

/// @nodoc
class _$DowmloadsCopyWithImpl<$Res, $Val extends Dowmloads>
    implements $DowmloadsCopyWith<$Res> {
  _$DowmloadsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? posterPath = freezed,
  }) {
    return _then(_value.copyWith(
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DowmloadsCopyWith<$Res> implements $DowmloadsCopyWith<$Res> {
  factory _$$_DowmloadsCopyWith(
          _$_Dowmloads value, $Res Function(_$_Dowmloads) then) =
      __$$_DowmloadsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "poster_path") String? posterPath});
}

/// @nodoc
class __$$_DowmloadsCopyWithImpl<$Res>
    extends _$DowmloadsCopyWithImpl<$Res, _$_Dowmloads>
    implements _$$_DowmloadsCopyWith<$Res> {
  __$$_DowmloadsCopyWithImpl(
      _$_Dowmloads _value, $Res Function(_$_Dowmloads) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? posterPath = freezed,
  }) {
    return _then(_$_Dowmloads(
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Dowmloads implements _Dowmloads {
  const _$_Dowmloads({@JsonKey(name: "poster_path") required this.posterPath});

  factory _$_Dowmloads.fromJson(Map<String, dynamic> json) =>
      _$$_DowmloadsFromJson(json);

  @override
  @JsonKey(name: "poster_path")
  final String? posterPath;

  @override
  String toString() {
    return 'Dowmloads(posterPath: $posterPath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Dowmloads &&
            (identical(other.posterPath, posterPath) ||
                other.posterPath == posterPath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, posterPath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DowmloadsCopyWith<_$_Dowmloads> get copyWith =>
      __$$_DowmloadsCopyWithImpl<_$_Dowmloads>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DowmloadsToJson(
      this,
    );
  }
}

abstract class _Dowmloads implements Dowmloads {
  const factory _Dowmloads(
          {@JsonKey(name: "poster_path") required final String? posterPath}) =
      _$_Dowmloads;

  factory _Dowmloads.fromJson(Map<String, dynamic> json) =
      _$_Dowmloads.fromJson;

  @override
  @JsonKey(name: "poster_path")
  String? get posterPath;
  @override
  @JsonKey(ignore: true)
  _$$_DowmloadsCopyWith<_$_Dowmloads> get copyWith =>
      throw _privateConstructorUsedError;
}
