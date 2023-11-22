import 'package:flutter_engineer_codecheck/infrastructure/remote/github/dto/github_owner.dart';
import 'package:flutter_engineer_codecheck/infrastructure/remote/github/dto/github_repository.dart';

GithubRepository dummyGithubRepository(int id) => GithubRepository(
      id: id,
      name: 'flutter_engineer_codecheck',
      fullName: 'RYO1223/flutter_engineer_codecheck',
      owner: const GithubOwner(
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
