import 'package:flutter_engineer_codecheck/domain/entity/repo.dart';
import 'package:flutter_engineer_codecheck/infrastructure/remote/github/dto/github_owner.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'github_repository.freezed.dart';
part 'github_repository.g.dart';

@freezed
class GithubRepository with _$GithubRepository {
  const factory GithubRepository({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'full_name') required String fullName,
    @JsonKey(name: 'owner') required GithubOwner owner,
    @JsonKey(name: 'html_url') required String htmlUrl,
    @JsonKey(name: 'description') required String? description,
    @JsonKey(name: 'updated_at') required String updatedAt,
    @JsonKey(name: 'stargazers_count') required int stargazersCount,
    @JsonKey(name: 'watchers_count') required int watchersCount,
    @JsonKey(name: 'forks_count') required int forksCount,
    @JsonKey(name: 'open_issues_count') required int openIssuesCount,
    @JsonKey(name: 'language') required String? language,
  }) = _GithubRepository;

  const GithubRepository._();

  factory GithubRepository.fromJson(Map<String, Object?> json) =>
      _$GithubRepositoryFromJson(json);

  Repo toRepo() {
    return Repo(
      id: id,
      name: name,
      fullName: fullName,
      owner: owner.toOwner(),
      htmlUrl: htmlUrl,
      description: description,
      updatedAt: updatedAt,
      stargazersCount: stargazersCount,
      watchersCount: watchersCount,
      forksCount: forksCount,
      openIssuesCount: openIssuesCount,
      language: language,
    );
  }
}
