import 'dart:convert';

import 'package:flutter_engineer_codecheck/domain/app_exception.dart';
import 'package:flutter_engineer_codecheck/domain/entity/repo_content.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_repository_content_result.freezed.dart';
part 'get_repository_content_result.g.dart';

enum Encoding {
  base64,
}

@freezed
class GetRepositoryContentResult with _$GetRepositoryContentResult {
  const factory GetRepositoryContentResult({
    @JsonKey(name: 'path') required String path,
    @JsonKey(name: 'encoding') required String encoding,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'content') required String content,
  }) = _GetRepositoryContentResult;

  const GetRepositoryContentResult._();

  factory GetRepositoryContentResult.fromJson(Map<String, Object?> json) =>
      _$GetRepositoryContentResultFromJson(json);

  @visibleForTesting
  String decodedContent() {
    if (encoding == Encoding.base64.name) {
      // github api は自動的に改行コードを含むので、base64Decode する前に改行コードを削除する
      // この改行コードは元ファイルに含まれていないものなので安全に消せる
      return utf8.decode(
        base64.decode(content.replaceAll('\n', '')),
        allowMalformed: true,
      );
    }
    throw AppException(Exception('Unknown encoding: $encoding'));
  }

  RepoContent toRepoContent() {
    return RepoContent(
      path: path,
      name: name,
      content: decodedContent(),
    );
  }
}
