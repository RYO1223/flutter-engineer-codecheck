import 'package:flutter_engineer_codecheck/domain/entity/owner.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'github_owner.freezed.dart';
part 'github_owner.g.dart';

@freezed
class GithubOwner with _$GithubOwner {
  const factory GithubOwner({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'avatar_url') required String avatarUrl,
    @JsonKey(name: 'login') required String login,
  }) = _GithubOwner;

  const GithubOwner._();

  factory GithubOwner.fromJson(Map<String, Object?> json) =>
      _$GithubOwnerFromJson(json);

  Owner toOwner() {
    return Owner(
      id: id,
      avatarUrl: avatarUrl,
      login: login,
    );
  }
}
