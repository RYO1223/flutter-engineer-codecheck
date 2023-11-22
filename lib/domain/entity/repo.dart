import 'package:flutter_engineer_codecheck/domain/entity/owner.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'repo.freezed.dart';

/// アーキテクチャのRepositoryと混同するので、Repoと命名しています。
@freezed
class Repo with _$Repo {
  factory Repo({
    required int id,
    required String name,
    required String fullName,
    required Owner owner,
    required String htmlUrl,
    required String? description,
    required String updatedAt,
    required int stargazersCount,
    required int watchersCount,
    required int forksCount,
    required int openIssuesCount,
    required String? language,
  }) = _Repo;

  const Repo._();
}
