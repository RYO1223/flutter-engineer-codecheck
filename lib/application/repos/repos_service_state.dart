import 'package:flutter_engineer_codecheck/domain/app_exception.dart';
import 'package:flutter_engineer_codecheck/domain/entity/repo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'repos_service_state.freezed.dart';

// AsyncValueで表現できないuninitializedとallContentLoadedのために独自Statusを作成
enum ReposServiceStatus {
  /// 検索する前の状態
  uninitialized,

  /// 検索中
  loading,

  /// 検索したがエラーがでた
  error,

  /// 検索したがデータがない
  empty,

  /// 検索して、適切にデータが取得できた
  contentAvailable,

  /// 追加のデータを取得中
  loadingAdditionalContent,

  /// 追加のデータを取得中にエラーがでた
  contentAvailableWithError,

  /// 追加のデータがない
  allContentLoaded,
}

@freezed
class ReposServiceState with _$ReposServiceState {
  const factory ReposServiceState({
    @Default([]) List<Repo> repos,

    /// 8種類の状態がある
    /// 1. uninitialized -> 検索する前の状態
    /// 2. loading -> 検索中
    /// 3. error -> 検索したがエラーがでた
    /// 4. empty -> 検索したがデータがない
    /// 5. contentAvailable -> 検索して、適切にデータが取得できた
    /// 6. loadingAdditionalContent -> 追加のデータを取得中
    /// 7. contentAvailableWithError -> 追加のデータを取得中にエラーがでた
    /// 8. allContentLoaded -> 追加のデータがない
    @Default(ReposServiceStatus.uninitialized) ReposServiceStatus status,
    AppException? error,
  }) = _ReposServiceState;

  const ReposServiceState._();
}
