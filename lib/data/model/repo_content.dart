import 'package:freezed_annotation/freezed_annotation.dart';

part 'repo_content.freezed.dart';
part 'repo_content.g.dart';

@freezed
class RepoContent with _$RepoContent {
  const factory RepoContent({
    required String path,
    required String name,
    required String content,
  }) = _RepoContent;

  const RepoContent._();

  factory RepoContent.fromJson(Map<String, Object?> json) =>
      _$RepoContentFromJson(json);
}
