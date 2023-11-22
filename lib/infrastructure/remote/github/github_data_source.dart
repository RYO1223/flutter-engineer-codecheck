import 'package:dio/dio.dart';
import 'package:flutter_engineer_codecheck/infrastructure/remote/github/dto/get_repository_content_result.dart';
import 'package:flutter_engineer_codecheck/infrastructure/remote/github/dto/search_repositories_result.dart';
import 'package:flutter_engineer_codecheck/infrastructure/remote/github/github_dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'github_data_source.g.dart';

@riverpod
GithubDataSource githubDataSource(GithubDataSourceRef ref) {
  return GithubDataSource(ref);
}

@RestApi()
abstract class GithubDataSource {
  factory GithubDataSource(GithubDataSourceRef ref) =>
      _GithubDataSource(ref.read(githubDioProvider));

  @GET('/search/repositories')
  Future<SearchRepositoriesResult> searchRepositories(
    @Query('q') String query,
    @Query('sort') String? sort,
    @Query('order') String? order,
    @Query('per_page') int? perPage,
    @Query('page') int? page,
  );

  @GET('/repos/{owner}/{repo}/contents/{path}')
  Future<GetRepositoryContentResult> getRepositoryContent(
    @Path('owner') String owner,
    @Path('repo') String repo,
    @Path('path') String path,
  );
}
