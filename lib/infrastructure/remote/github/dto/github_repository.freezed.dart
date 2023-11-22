// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'github_repository.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GithubRepository _$GithubRepositoryFromJson(Map<String, dynamic> json) {
  return _GithubRepository.fromJson(json);
}

/// @nodoc
mixin _$GithubRepository {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'full_name')
  String get fullName => throw _privateConstructorUsedError;
  @JsonKey(name: 'owner')
  GithubOwner get owner => throw _privateConstructorUsedError;
  @JsonKey(name: 'html_url')
  String get htmlUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'stargazers_count')
  int get stargazersCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'watchers_count')
  int get watchersCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'forks_count')
  int get forksCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'open_issues_count')
  int get openIssuesCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'language')
  String? get language => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GithubRepositoryCopyWith<GithubRepository> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GithubRepositoryCopyWith<$Res> {
  factory $GithubRepositoryCopyWith(
          GithubRepository value, $Res Function(GithubRepository) then) =
      _$GithubRepositoryCopyWithImpl<$Res, GithubRepository>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'full_name') String fullName,
      @JsonKey(name: 'owner') GithubOwner owner,
      @JsonKey(name: 'html_url') String htmlUrl,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'updated_at') String updatedAt,
      @JsonKey(name: 'stargazers_count') int stargazersCount,
      @JsonKey(name: 'watchers_count') int watchersCount,
      @JsonKey(name: 'forks_count') int forksCount,
      @JsonKey(name: 'open_issues_count') int openIssuesCount,
      @JsonKey(name: 'language') String? language});

  $GithubOwnerCopyWith<$Res> get owner;
}

/// @nodoc
class _$GithubRepositoryCopyWithImpl<$Res, $Val extends GithubRepository>
    implements $GithubRepositoryCopyWith<$Res> {
  _$GithubRepositoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? fullName = null,
    Object? owner = null,
    Object? htmlUrl = null,
    Object? description = freezed,
    Object? updatedAt = null,
    Object? stargazersCount = null,
    Object? watchersCount = null,
    Object? forksCount = null,
    Object? openIssuesCount = null,
    Object? language = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as GithubOwner,
      htmlUrl: null == htmlUrl
          ? _value.htmlUrl
          : htmlUrl // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      stargazersCount: null == stargazersCount
          ? _value.stargazersCount
          : stargazersCount // ignore: cast_nullable_to_non_nullable
              as int,
      watchersCount: null == watchersCount
          ? _value.watchersCount
          : watchersCount // ignore: cast_nullable_to_non_nullable
              as int,
      forksCount: null == forksCount
          ? _value.forksCount
          : forksCount // ignore: cast_nullable_to_non_nullable
              as int,
      openIssuesCount: null == openIssuesCount
          ? _value.openIssuesCount
          : openIssuesCount // ignore: cast_nullable_to_non_nullable
              as int,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GithubOwnerCopyWith<$Res> get owner {
    return $GithubOwnerCopyWith<$Res>(_value.owner, (value) {
      return _then(_value.copyWith(owner: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GithubRepositoryImplCopyWith<$Res>
    implements $GithubRepositoryCopyWith<$Res> {
  factory _$$GithubRepositoryImplCopyWith(_$GithubRepositoryImpl value,
          $Res Function(_$GithubRepositoryImpl) then) =
      __$$GithubRepositoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'full_name') String fullName,
      @JsonKey(name: 'owner') GithubOwner owner,
      @JsonKey(name: 'html_url') String htmlUrl,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'updated_at') String updatedAt,
      @JsonKey(name: 'stargazers_count') int stargazersCount,
      @JsonKey(name: 'watchers_count') int watchersCount,
      @JsonKey(name: 'forks_count') int forksCount,
      @JsonKey(name: 'open_issues_count') int openIssuesCount,
      @JsonKey(name: 'language') String? language});

  @override
  $GithubOwnerCopyWith<$Res> get owner;
}

/// @nodoc
class __$$GithubRepositoryImplCopyWithImpl<$Res>
    extends _$GithubRepositoryCopyWithImpl<$Res, _$GithubRepositoryImpl>
    implements _$$GithubRepositoryImplCopyWith<$Res> {
  __$$GithubRepositoryImplCopyWithImpl(_$GithubRepositoryImpl _value,
      $Res Function(_$GithubRepositoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? fullName = null,
    Object? owner = null,
    Object? htmlUrl = null,
    Object? description = freezed,
    Object? updatedAt = null,
    Object? stargazersCount = null,
    Object? watchersCount = null,
    Object? forksCount = null,
    Object? openIssuesCount = null,
    Object? language = freezed,
  }) {
    return _then(_$GithubRepositoryImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as GithubOwner,
      htmlUrl: null == htmlUrl
          ? _value.htmlUrl
          : htmlUrl // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      stargazersCount: null == stargazersCount
          ? _value.stargazersCount
          : stargazersCount // ignore: cast_nullable_to_non_nullable
              as int,
      watchersCount: null == watchersCount
          ? _value.watchersCount
          : watchersCount // ignore: cast_nullable_to_non_nullable
              as int,
      forksCount: null == forksCount
          ? _value.forksCount
          : forksCount // ignore: cast_nullable_to_non_nullable
              as int,
      openIssuesCount: null == openIssuesCount
          ? _value.openIssuesCount
          : openIssuesCount // ignore: cast_nullable_to_non_nullable
              as int,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GithubRepositoryImpl extends _GithubRepository {
  const _$GithubRepositoryImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'full_name') required this.fullName,
      @JsonKey(name: 'owner') required this.owner,
      @JsonKey(name: 'html_url') required this.htmlUrl,
      @JsonKey(name: 'description') required this.description,
      @JsonKey(name: 'updated_at') required this.updatedAt,
      @JsonKey(name: 'stargazers_count') required this.stargazersCount,
      @JsonKey(name: 'watchers_count') required this.watchersCount,
      @JsonKey(name: 'forks_count') required this.forksCount,
      @JsonKey(name: 'open_issues_count') required this.openIssuesCount,
      @JsonKey(name: 'language') required this.language})
      : super._();

  factory _$GithubRepositoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$GithubRepositoryImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'full_name')
  final String fullName;
  @override
  @JsonKey(name: 'owner')
  final GithubOwner owner;
  @override
  @JsonKey(name: 'html_url')
  final String htmlUrl;
  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'updated_at')
  final String updatedAt;
  @override
  @JsonKey(name: 'stargazers_count')
  final int stargazersCount;
  @override
  @JsonKey(name: 'watchers_count')
  final int watchersCount;
  @override
  @JsonKey(name: 'forks_count')
  final int forksCount;
  @override
  @JsonKey(name: 'open_issues_count')
  final int openIssuesCount;
  @override
  @JsonKey(name: 'language')
  final String? language;

  @override
  String toString() {
    return 'GithubRepository(id: $id, name: $name, fullName: $fullName, owner: $owner, htmlUrl: $htmlUrl, description: $description, updatedAt: $updatedAt, stargazersCount: $stargazersCount, watchersCount: $watchersCount, forksCount: $forksCount, openIssuesCount: $openIssuesCount, language: $language)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GithubRepositoryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.owner, owner) || other.owner == owner) &&
            (identical(other.htmlUrl, htmlUrl) || other.htmlUrl == htmlUrl) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.stargazersCount, stargazersCount) ||
                other.stargazersCount == stargazersCount) &&
            (identical(other.watchersCount, watchersCount) ||
                other.watchersCount == watchersCount) &&
            (identical(other.forksCount, forksCount) ||
                other.forksCount == forksCount) &&
            (identical(other.openIssuesCount, openIssuesCount) ||
                other.openIssuesCount == openIssuesCount) &&
            (identical(other.language, language) ||
                other.language == language));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      fullName,
      owner,
      htmlUrl,
      description,
      updatedAt,
      stargazersCount,
      watchersCount,
      forksCount,
      openIssuesCount,
      language);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GithubRepositoryImplCopyWith<_$GithubRepositoryImpl> get copyWith =>
      __$$GithubRepositoryImplCopyWithImpl<_$GithubRepositoryImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GithubRepositoryImplToJson(
      this,
    );
  }
}

abstract class _GithubRepository extends GithubRepository {
  const factory _GithubRepository(
      {@JsonKey(name: 'id') required final int id,
      @JsonKey(name: 'name') required final String name,
      @JsonKey(name: 'full_name') required final String fullName,
      @JsonKey(name: 'owner') required final GithubOwner owner,
      @JsonKey(name: 'html_url') required final String htmlUrl,
      @JsonKey(name: 'description') required final String? description,
      @JsonKey(name: 'updated_at') required final String updatedAt,
      @JsonKey(name: 'stargazers_count') required final int stargazersCount,
      @JsonKey(name: 'watchers_count') required final int watchersCount,
      @JsonKey(name: 'forks_count') required final int forksCount,
      @JsonKey(name: 'open_issues_count') required final int openIssuesCount,
      @JsonKey(name: 'language')
      required final String? language}) = _$GithubRepositoryImpl;
  const _GithubRepository._() : super._();

  factory _GithubRepository.fromJson(Map<String, dynamic> json) =
      _$GithubRepositoryImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'full_name')
  String get fullName;
  @override
  @JsonKey(name: 'owner')
  GithubOwner get owner;
  @override
  @JsonKey(name: 'html_url')
  String get htmlUrl;
  @override
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(name: 'updated_at')
  String get updatedAt;
  @override
  @JsonKey(name: 'stargazers_count')
  int get stargazersCount;
  @override
  @JsonKey(name: 'watchers_count')
  int get watchersCount;
  @override
  @JsonKey(name: 'forks_count')
  int get forksCount;
  @override
  @JsonKey(name: 'open_issues_count')
  int get openIssuesCount;
  @override
  @JsonKey(name: 'language')
  String? get language;
  @override
  @JsonKey(ignore: true)
  _$$GithubRepositoryImplCopyWith<_$GithubRepositoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
