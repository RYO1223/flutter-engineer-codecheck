import 'package:flutter_engineer_codecheck/application/repo_repository.dart';
import 'package:flutter_engineer_codecheck/domain/app_exception.dart';
import 'package:flutter_engineer_codecheck/domain/entity/repo.dart';
import 'package:flutter_engineer_codecheck/domain/entity/repo_content.dart';
import 'package:flutter_engineer_codecheck/infrastructure/remote/github/github_data_source.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'repo_repository_impl.g.dart';

@riverpod
RepoRepository repoRepository(RepoRepositoryRef ref) {
  return RepoRepositoryImpl(ref);
}

class RepoRepositoryImpl implements RepoRepository {
  RepoRepositoryImpl(this.ref);

  final RepoRepositoryRef ref;

  late final GithubDataSource _dataSource = ref.read(githubDataSourceProvider);

  @override
  Future<List<Repo>> searchRepos(
    String query, {
    String? sort,
    String? order,
    int? perPage,
    int? page,
  }) async {
    try {
      final result = await _dataSource.searchRepositories(
        query,
        sort,
        order,
        perPage,
        page,
      );
      return result.items.map((e) => e.toRepo()).toList();
    } on Exception catch (error) {
      throw AppException(error);
    }
  }

  @override
  Future<RepoContent> fetchRepoContent(
    String owner,
    String repo,
    String path,
  ) async {
    try {
      final result = await _dataSource.getRepositoryContent(owner, repo, path);
      return result.toRepoContent();
    } on Exception catch (error) {
      throw AppException(error);
    }
  }
}
