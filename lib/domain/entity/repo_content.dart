import 'package:freezed_annotation/freezed_annotation.dart';

part 'repo_content.freezed.dart';

@freezed
class RepoContent with _$RepoContent {
  const factory RepoContent({
    required String path,
    required String name,
    required String content,
  }) = _RepoContent;

  const RepoContent._();
}
