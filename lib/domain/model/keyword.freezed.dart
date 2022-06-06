// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'keyword.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Keyword _$KeywordFromJson(Map<String, dynamic> json) {
  return _Keyword.fromJson(json);
}

/// @nodoc
mixin _$Keyword {
  String get value => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KeywordCopyWith<Keyword> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KeywordCopyWith<$Res> {
  factory $KeywordCopyWith(Keyword value, $Res Function(Keyword) then) =
      _$KeywordCopyWithImpl<$Res>;
  $Res call({String value, int? id});
}

/// @nodoc
class _$KeywordCopyWithImpl<$Res> implements $KeywordCopyWith<$Res> {
  _$KeywordCopyWithImpl(this._value, this._then);

  final Keyword _value;
  // ignore: unused_field
  final $Res Function(Keyword) _then;

  @override
  $Res call({
    Object? value = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$KeywordCopyWith<$Res> implements $KeywordCopyWith<$Res> {
  factory _$KeywordCopyWith(_Keyword value, $Res Function(_Keyword) then) =
      __$KeywordCopyWithImpl<$Res>;
  @override
  $Res call({String value, int? id});
}

/// @nodoc
class __$KeywordCopyWithImpl<$Res> extends _$KeywordCopyWithImpl<$Res>
    implements _$KeywordCopyWith<$Res> {
  __$KeywordCopyWithImpl(_Keyword _value, $Res Function(_Keyword) _then)
      : super(_value, (v) => _then(v as _Keyword));

  @override
  _Keyword get _value => super._value as _Keyword;

  @override
  $Res call({
    Object? value = freezed,
    Object? id = freezed,
  }) {
    return _then(_Keyword(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Keyword implements _Keyword {
  _$_Keyword({required this.value, this.id});

  factory _$_Keyword.fromJson(Map<String, dynamic> json) =>
      _$$_KeywordFromJson(json);

  @override
  final String value;
  @override
  final int? id;

  @override
  String toString() {
    return 'Keyword(value: $value, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Keyword &&
            const DeepCollectionEquality().equals(other.value, value) &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(value),
      const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$KeywordCopyWith<_Keyword> get copyWith =>
      __$KeywordCopyWithImpl<_Keyword>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_KeywordToJson(this);
  }
}

abstract class _Keyword implements Keyword {
  factory _Keyword({required final String value, final int? id}) = _$_Keyword;

  factory _Keyword.fromJson(Map<String, dynamic> json) = _$_Keyword.fromJson;

  @override
  String get value => throw _privateConstructorUsedError;
  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$KeywordCopyWith<_Keyword> get copyWith =>
      throw _privateConstructorUsedError;
}
