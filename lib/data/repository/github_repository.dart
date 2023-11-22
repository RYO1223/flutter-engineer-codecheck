import 'package:flutter_engineer_codecheck/data/model/repo_content.dart';
import 'package:flutter_engineer_codecheck/data/model/search_repos_result.dart';

abstract class GithubRepository {
  Future<SearchReposResult> searchRepos(
    String query, {
    String? sort,
    String? order,
    int? perPage,
    int? page,
  });

  Future<RepoContent> fetchRepoContent(
    String owner,
    String repo,
    String path,
  );
}
