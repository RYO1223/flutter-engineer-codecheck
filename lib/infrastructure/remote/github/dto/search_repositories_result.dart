import 'package:flutter_engineer_codecheck/infrastructure/remote/github/dto/github_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_repositories_result.freezed.dart';
part 'search_repositories_result.g.dart';

@freezed
class SearchRepositoriesResult with _$SearchRepositoriesResult {
  const factory SearchRepositoriesResult({
    @JsonKey(name: 'total_count') required int totalCount,
    @JsonKey(name: 'incomplete_results') required bool incompleteResults,
    @JsonKey(name: 'items') required List<GithubRepository> items,
  }) = _SearchRepositoriesResult;

  const SearchRepositoriesResult._();

  factory SearchRepositoriesResult.fromJson(Map<String, Object?> json) =>
      _$SearchRepositoriesResultFromJson(json);
}
