import 'package:flutter_engineer_codecheck/domain/entity/repo.dart';
import 'package:flutter_engineer_codecheck/domain/entity/repo_content.dart';

abstract class RepoRepository {
  Future<List<Repo>> searchRepos(
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
