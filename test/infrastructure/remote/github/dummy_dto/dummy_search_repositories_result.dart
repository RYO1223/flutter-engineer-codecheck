import 'package:flutter_engineer_codecheck/infrastructure/remote/github/dto/search_repositories_result.dart';

import 'dummy_github_repo.dart';

SearchRepositoriesResult dummySearchReposResult({int idStartWith = 1}) {
  return SearchRepositoriesResult(
    totalCount: 10,
    incompleteResults: false,
    items: [
      dummyGithubRepository(idStartWith),
      dummyGithubRepository(idStartWith + 1),
      dummyGithubRepository(idStartWith + 2),
      dummyGithubRepository(idStartWith + 3),
      dummyGithubRepository(idStartWith + 4),
      dummyGithubRepository(idStartWith + 5),
      dummyGithubRepository(idStartWith + 6),
      dummyGithubRepository(idStartWith + 7),
      dummyGithubRepository(idStartWith + 8),
      dummyGithubRepository(idStartWith + 9),
    ],
  );
}
