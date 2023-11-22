import 'package:flutter/material.dart';
import 'package:flutter_engineer_codecheck/application/repo_repository.dart';
import 'package:flutter_engineer_codecheck/domain/entity/repo_content.dart';
import 'package:flutter_engineer_codecheck/infrastructure/repository/repo_repository_impl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'repo_content_service.g.dart';

@riverpod
AsyncValue<RepoContent> repoReadme(
  RepoReadmeRef ref,
  String owner,
  String repo,
) {
  final readmeAsyncValue =
      ref.watch(repoContentServiceProvider(owner, repo, 'README.md'));
  return readmeAsyncValue;
}

@riverpod
class RepoContentService extends _$RepoContentService {
  @override
  FutureOr<RepoContent> build(String owner, String repo, String path) {
    return fetchRepoContent(owner, repo, path);
  }

  late final RepoRepository _repository = ref.read(repoRepositoryProvider);

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
