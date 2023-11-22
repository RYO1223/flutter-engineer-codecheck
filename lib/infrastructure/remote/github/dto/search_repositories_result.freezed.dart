// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_repositories_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchRepositoriesResult _$SearchRepositoriesResultFromJson(
    Map<String, dynamic> json) {
  return _SearchRepositoriesResult.fromJson(json);
}

/// @nodoc
mixin _$SearchRepositoriesResult {
  @JsonKey(name: 'total_count')
  int get totalCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'incomplete_results')
  bool get incompleteResults => throw _privateConstructorUsedError;
  @JsonKey(name: 'items')
  List<GithubRepository> get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchRepositoriesResultCopyWith<SearchRepositoriesResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchRepositoriesResultCopyWith<$Res> {
  factory $SearchRepositoriesResultCopyWith(SearchRepositoriesResult value,
          $Res Function(SearchRepositoriesResult) then) =
      _$SearchRepositoriesResultCopyWithImpl<$Res, SearchRepositoriesResult>;
  @useResult
  $Res call(
      {@JsonKey(name: 'total_count') int totalCount,
      @JsonKey(name: 'incomplete_results') bool incompleteResults,
      @JsonKey(name: 'items') List<GithubRepository> items});
}

/// @nodoc
class _$SearchRepositoriesResultCopyWithImpl<$Res,
        $Val extends SearchRepositoriesResult>
    implements $SearchRepositoriesResultCopyWith<$Res> {
  _$SearchRepositoriesResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalCount = null,
    Object? incompleteResults = null,
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      incompleteResults: null == incompleteResults
          ? _value.incompleteResults
          : incompleteResults // ignore: cast_nullable_to_non_nullable
              as bool,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<GithubRepository>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchRepositoriesResultImplCopyWith<$Res>
    implements $SearchRepositoriesResultCopyWith<$Res> {
  factory _$$SearchRepositoriesResultImplCopyWith(
          _$SearchRepositoriesResultImpl value,
          $Res Function(_$SearchRepositoriesResultImpl) then) =
      __$$SearchRepositoriesResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'total_count') int totalCount,
      @JsonKey(name: 'incomplete_results') bool incompleteResults,
      @JsonKey(name: 'items') List<GithubRepository> items});
}

/// @nodoc
class __$$SearchRepositoriesResultImplCopyWithImpl<$Res>
    extends _$SearchRepositoriesResultCopyWithImpl<$Res,
        _$SearchRepositoriesResultImpl>
    implements _$$SearchRepositoriesResultImplCopyWith<$Res> {
  __$$SearchRepositoriesResultImplCopyWithImpl(
      _$SearchRepositoriesResultImpl _value,
      $Res Function(_$SearchRepositoriesResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalCount = null,
    Object? incompleteResults = null,
    Object? items = null,
  }) {
    return _then(_$SearchRepositoriesResultImpl(
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      incompleteResults: null == incompleteResults
          ? _value.incompleteResults
          : incompleteResults // ignore: cast_nullable_to_non_nullable
              as bool,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<GithubRepository>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchRepositoriesResultImpl extends _SearchRepositoriesResult {
  const _$SearchRepositoriesResultImpl(
      {@JsonKey(name: 'total_count') required this.totalCount,
      @JsonKey(name: 'incomplete_results') required this.incompleteResults,
      @JsonKey(name: 'items') required final List<GithubRepository> items})
      : _items = items,
        super._();

  factory _$SearchRepositoriesResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchRepositoriesResultImplFromJson(json);

  @override
  @JsonKey(name: 'total_count')
  final int totalCount;
  @override
  @JsonKey(name: 'incomplete_results')
  final bool incompleteResults;
  final List<GithubRepository> _items;
  @override
  @JsonKey(name: 'items')
  List<GithubRepository> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'SearchRepositoriesResult(totalCount: $totalCount, incompleteResults: $incompleteResults, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchRepositoriesResultImpl &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount) &&
            (identical(other.incompleteResults, incompleteResults) ||
                other.incompleteResults == incompleteResults) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, totalCount, incompleteResults,
      const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchRepositoriesResultImplCopyWith<_$SearchRepositoriesResultImpl>
      get copyWith => __$$SearchRepositoriesResultImplCopyWithImpl<
          _$SearchRepositoriesResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchRepositoriesResultImplToJson(
      this,
    );
  }
}

abstract class _SearchRepositoriesResult extends SearchRepositoriesResult {
  const factory _SearchRepositoriesResult(
          {@JsonKey(name: 'total_count') required final int totalCount,
          @JsonKey(name: 'incomplete_results')
          required final bool incompleteResults,
          @JsonKey(name: 'items')
          required final List<GithubRepository> items}) =
      _$SearchRepositoriesResultImpl;
  const _SearchRepositoriesResult._() : super._();

  factory _SearchRepositoriesResult.fromJson(Map<String, dynamic> json) =
      _$SearchRepositoriesResultImpl.fromJson;

  @override
  @JsonKey(name: 'total_count')
  int get totalCount;
  @override
  @JsonKey(name: 'incomplete_results')
  bool get incompleteResults;
  @override
  @JsonKey(name: 'items')
  List<GithubRepository> get items;
  @override
  @JsonKey(ignore: true)
  _$$SearchRepositoriesResultImplCopyWith<_$SearchRepositoriesResultImpl>
      get copyWith => throw _privateConstructorUsedError;
}
