import 'dart:convert';

import 'package:flutter_engineer_codecheck/data/app_exception.dart';
import 'package:flutter_engineer_codecheck/data/model/repo_content.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'fetch_repo_content_result.freezed.dart';
part 'fetch_repo_content_result.g.dart';

enum Encoding {
  base64,
}

@freezed
class FetchRepoContentResult with _$FetchRepoContentResult {
  const factory FetchRepoContentResult({
    required String path,
    required String encoding,
    required String name,
    required String content,
  }) = _FetchRepoContentResult;

  const FetchRepoContentResult._();

  factory FetchRepoContentResult.fromJson(Map<String, Object?> json) =>
      _$FetchRepoContentResultFromJson(json);

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
