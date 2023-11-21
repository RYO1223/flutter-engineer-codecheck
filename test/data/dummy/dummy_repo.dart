import 'package:flutter_engineer_codecheck/data/model/owner.dart';
import 'package:flutter_engineer_codecheck/data/model/repo.dart';

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
