import 'package:flutter/material.dart';
import 'package:flutter_engineer_codecheck/data/model/repo_content.dart';
import 'package:flutter_engineer_codecheck/data/repository/github_repository.dart';
import 'package:flutter_engineer_codecheck/data/repository/github_repository_impl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'repo_content_view_model.g.dart';

@riverpod
AsyncValue<RepoContent> repoReadme(
  RepoReadmeRef ref,
  String owner,
  String repo,
) {
  final readmeAsyncValue =
      ref.watch(repoContentViewModelProvider(owner, repo, 'README.md'));
  return readmeAsyncValue;
}

@riverpod
class RepoContentViewModel extends _$RepoContentViewModel {
  @override
  FutureOr<RepoContent> build(String owner, String repo, String path) {
    return fetchRepoContent(owner, repo, path);
  }

  late final GithubRepository _repository = ref.read(githubRepositoryProvider);

  @visibleForTesting
  Future<RepoContent> fetchRepoContent(
    String owner,
    String repo,
    String path,
  ) async {
    final repoContent = await _repository.fetchRepoContent(
      owner,
      repo,
      path,
    );
    return repoContent;
  }
}
