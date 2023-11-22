import 'package:flutter_engineer_codecheck/domain/entity/owner.dart';
import 'package:flutter_engineer_codecheck/domain/entity/repo.dart';

Repo dummyRepo(int id) => Repo(
      id: id,
      name: 'flutter_engineer_codecheck',
      fullName: 'RYO1223/flutter_engineer_codecheck',
      owner: const Owner(
        id: 1,
        avatarUrl: 'https://example.com',
        login: 'RYO1223',
      ),
      htmlUrl: 'https://example.com',
      description: 'Flutter Engineer Codecheck',
      updatedAt: DateTime.now().toString(),
      stargazersCount: 100000,
      watchersCount: 100000,
      forksCount: 100000,
      openIssuesCount: 100000,
      language: 'Flutter',
    );

List<Repo> dummyRepos({int idStartWith = 1}) {
  return [
    dummyRepo(idStartWith),
    dummyRepo(idStartWith + 1),
    dummyRepo(idStartWith + 2),
    dummyRepo(idStartWith + 3),
    dummyRepo(idStartWith + 4),
    dummyRepo(idStartWith + 5),
    dummyRepo(idStartWith + 6),
    dummyRepo(idStartWith + 7),
    dummyRepo(idStartWith + 8),
    dummyRepo(idStartWith + 9),
  ];
}
