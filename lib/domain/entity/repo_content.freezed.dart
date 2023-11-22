// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'repo_content.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RepoContent {
  String get path => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RepoContentCopyWith<RepoContent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepoContentCopyWith<$Res> {
  factory $RepoContentCopyWith(
          RepoContent value, $Res Function(RepoContent) then) =
      _$RepoContentCopyWithImpl<$Res, RepoContent>;
  @useResult
  $Res call({String path, String name, String content});
}

/// @nodoc
class _$RepoContentCopyWithImpl<$Res, $Val extends RepoContent>
    implements $RepoContentCopyWith<$Res> {
  _$RepoContentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
    Object? name = null,
    Object? content = null,
  }) {
    return _then(_value.copyWith(
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RepoContentImplCopyWith<$Res>
    implements $RepoContentCopyWith<$Res> {
  factory _$$RepoContentImplCopyWith(
          _$RepoContentImpl value, $Res Function(_$RepoContentImpl) then) =
      __$$RepoContentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String path, String name, String content});
}

/// @nodoc
class __$$RepoContentImplCopyWithImpl<$Res>
    extends _$RepoContentCopyWithImpl<$Res, _$RepoContentImpl>
    implements _$$RepoContentImplCopyWith<$Res> {
  __$$RepoContentImplCopyWithImpl(
      _$RepoContentImpl _value, $Res Function(_$RepoContentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
    Object? name = null,
    Object? content = null,
  }) {
    return _then(_$RepoContentImpl(
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RepoContentImpl extends _RepoContent {
  const _$RepoContentImpl(
      {required this.path, required this.name, required this.content})
      : super._();

  @override
  final String path;
  @override
  final String name;
  @override
  final String content;

  @override
  String toString() {
    return 'RepoContent(path: $path, name: $name, content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RepoContentImpl &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.content, content) || other.content == content));
  }

  @override
  int get hashCode => Object.hash(runtimeType, path, name, content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RepoContentImplCopyWith<_$RepoContentImpl> get copyWith =>
      __$$RepoContentImplCopyWithImpl<_$RepoContentImpl>(this, _$identity);
}

abstract class _RepoContent extends RepoContent {
  const factory _RepoContent(
      {required final String path,
      required final String name,
      required final String content}) = _$RepoContentImpl;
  const _RepoContent._() : super._();

  @override
  String get path;
  @override
  String get name;
  @override
  String get content;
  @override
  @JsonKey(ignore: true)
  _$$RepoContentImplCopyWith<_$RepoContentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
