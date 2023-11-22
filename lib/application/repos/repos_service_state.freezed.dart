// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'repos_service_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ReposServiceState {
  List<Repo> get repos => throw _privateConstructorUsedError;

  /// 8種類の状態がある
  /// 1. uninitialized -> 検索する前の状態
  /// 2. loading -> 検索中
  /// 3. error -> 検索したがエラーがでた
  /// 4. empty -> 検索したがデータがない
  /// 5. contentAvailable -> 検索して、適切にデータが取得できた
  /// 6. loadingAdditionalContent -> 追加のデータを取得中
  /// 7. contentAvailableWithError -> 追加のデータを取得中にエラーがでた
  /// 8. allContentLoaded -> 追加のデータがない
  ReposServiceStatus get status => throw _privateConstructorUsedError;
  AppException? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ReposServiceStateCopyWith<ReposServiceState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReposServiceStateCopyWith<$Res> {
  factory $ReposServiceStateCopyWith(
          ReposServiceState value, $Res Function(ReposServiceState) then) =
      _$ReposServiceStateCopyWithImpl<$Res, ReposServiceState>;
  @useResult
  $Res call({List<Repo> repos, ReposServiceStatus status, AppException? error});
}

/// @nodoc
class _$ReposServiceStateCopyWithImpl<$Res, $Val extends ReposServiceState>
    implements $ReposServiceStateCopyWith<$Res> {
  _$ReposServiceStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? repos = null,
    Object? status = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      repos: null == repos
          ? _value.repos
          : repos // ignore: cast_nullable_to_non_nullable
              as List<Repo>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ReposServiceStatus,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as AppException?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReposServiceStateImplCopyWith<$Res>
    implements $ReposServiceStateCopyWith<$Res> {
  factory _$$ReposServiceStateImplCopyWith(_$ReposServiceStateImpl value,
          $Res Function(_$ReposServiceStateImpl) then) =
      __$$ReposServiceStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Repo> repos, ReposServiceStatus status, AppException? error});
}

/// @nodoc
class __$$ReposServiceStateImplCopyWithImpl<$Res>
    extends _$ReposServiceStateCopyWithImpl<$Res, _$ReposServiceStateImpl>
    implements _$$ReposServiceStateImplCopyWith<$Res> {
  __$$ReposServiceStateImplCopyWithImpl(_$ReposServiceStateImpl _value,
      $Res Function(_$ReposServiceStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? repos = null,
    Object? status = null,
    Object? error = freezed,
  }) {
    return _then(_$ReposServiceStateImpl(
      repos: null == repos
          ? _value._repos
          : repos // ignore: cast_nullable_to_non_nullable
              as List<Repo>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ReposServiceStatus,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as AppException?,
    ));
  }
}

/// @nodoc

class _$ReposServiceStateImpl extends _ReposServiceState {
  const _$ReposServiceStateImpl(
      {final List<Repo> repos = const [],
      this.status = ReposServiceStatus.uninitialized,
      this.error})
      : _repos = repos,
        super._();

  final List<Repo> _repos;
  @override
  @JsonKey()
  List<Repo> get repos {
    if (_repos is EqualUnmodifiableListView) return _repos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_repos);
  }

  /// 8種類の状態がある
  /// 1. uninitialized -> 検索する前の状態
  /// 2. loading -> 検索中
  /// 3. error -> 検索したがエラーがでた
  /// 4. empty -> 検索したがデータがない
  /// 5. contentAvailable -> 検索して、適切にデータが取得できた
  /// 6. loadingAdditionalContent -> 追加のデータを取得中
  /// 7. contentAvailableWithError -> 追加のデータを取得中にエラーがでた
  /// 8. allContentLoaded -> 追加のデータがない
  @override
  @JsonKey()
  final ReposServiceStatus status;
  @override
  final AppException? error;

  @override
  String toString() {
    return 'ReposServiceState(repos: $repos, status: $status, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReposServiceStateImpl &&
            const DeepCollectionEquality().equals(other._repos, _repos) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_repos), status, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReposServiceStateImplCopyWith<_$ReposServiceStateImpl> get copyWith =>
      __$$ReposServiceStateImplCopyWithImpl<_$ReposServiceStateImpl>(
          this, _$identity);
}

abstract class _ReposServiceState extends ReposServiceState {
  const factory _ReposServiceState(
      {final List<Repo> repos,
      final ReposServiceStatus status,
      final AppException? error}) = _$ReposServiceStateImpl;
  const _ReposServiceState._() : super._();

  @override
  List<Repo> get repos;
  @override

  /// 8種類の状態がある
  /// 1. uninitialized -> 検索する前の状態
  /// 2. loading -> 検索中
  /// 3. error -> 検索したがエラーがでた
  /// 4. empty -> 検索したがデータがない
  /// 5. contentAvailable -> 検索して、適切にデータが取得できた
  /// 6. loadingAdditionalContent -> 追加のデータを取得中
  /// 7. contentAvailableWithError -> 追加のデータを取得中にエラーがでた
  /// 8. allContentLoaded -> 追加のデータがない
  ReposServiceStatus get status;
  @override
  AppException? get error;
  @override
  @JsonKey(ignore: true)
  _$$ReposServiceStateImplCopyWith<_$ReposServiceStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
