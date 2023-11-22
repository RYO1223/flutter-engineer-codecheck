// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'github_owner.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GithubOwner _$GithubOwnerFromJson(Map<String, dynamic> json) {
  return _GithubOwner.fromJson(json);
}

/// @nodoc
mixin _$GithubOwner {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'avatar_url')
  String get avatarUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'login')
  String get login => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GithubOwnerCopyWith<GithubOwner> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GithubOwnerCopyWith<$Res> {
  factory $GithubOwnerCopyWith(
          GithubOwner value, $Res Function(GithubOwner) then) =
      _$GithubOwnerCopyWithImpl<$Res, GithubOwner>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'avatar_url') String avatarUrl,
      @JsonKey(name: 'login') String login});
}

/// @nodoc
class _$GithubOwnerCopyWithImpl<$Res, $Val extends GithubOwner>
    implements $GithubOwnerCopyWith<$Res> {
  _$GithubOwnerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? avatarUrl = null,
    Object? login = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      avatarUrl: null == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
      login: null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GithubOwnerImplCopyWith<$Res>
    implements $GithubOwnerCopyWith<$Res> {
  factory _$$GithubOwnerImplCopyWith(
          _$GithubOwnerImpl value, $Res Function(_$GithubOwnerImpl) then) =
      __$$GithubOwnerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'avatar_url') String avatarUrl,
      @JsonKey(name: 'login') String login});
}

/// @nodoc
class __$$GithubOwnerImplCopyWithImpl<$Res>
    extends _$GithubOwnerCopyWithImpl<$Res, _$GithubOwnerImpl>
    implements _$$GithubOwnerImplCopyWith<$Res> {
  __$$GithubOwnerImplCopyWithImpl(
      _$GithubOwnerImpl _value, $Res Function(_$GithubOwnerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? avatarUrl = null,
    Object? login = null,
  }) {
    return _then(_$GithubOwnerImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      avatarUrl: null == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
      login: null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GithubOwnerImpl extends _GithubOwner {
  const _$GithubOwnerImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'avatar_url') required this.avatarUrl,
      @JsonKey(name: 'login') required this.login})
      : super._();

  factory _$GithubOwnerImpl.fromJson(Map<String, dynamic> json) =>
      _$$GithubOwnerImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'avatar_url')
  final String avatarUrl;
  @override
  @JsonKey(name: 'login')
  final String login;

  @override
  String toString() {
    return 'GithubOwner(id: $id, avatarUrl: $avatarUrl, login: $login)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GithubOwnerImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl) &&
            (identical(other.login, login) || other.login == login));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, avatarUrl, login);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GithubOwnerImplCopyWith<_$GithubOwnerImpl> get copyWith =>
      __$$GithubOwnerImplCopyWithImpl<_$GithubOwnerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GithubOwnerImplToJson(
      this,
    );
  }
}

abstract class _GithubOwner extends GithubOwner {
  const factory _GithubOwner(
      {@JsonKey(name: 'id') required final int id,
      @JsonKey(name: 'avatar_url') required final String avatarUrl,
      @JsonKey(name: 'login') required final String login}) = _$GithubOwnerImpl;
  const _GithubOwner._() : super._();

  factory _GithubOwner.fromJson(Map<String, dynamic> json) =
      _$GithubOwnerImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'avatar_url')
  String get avatarUrl;
  @override
  @JsonKey(name: 'login')
  String get login;
  @override
  @JsonKey(ignore: true)
  _$$GithubOwnerImplCopyWith<_$GithubOwnerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
