// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_repo_content_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FetchRepoContentResultImpl _$$FetchRepoContentResultImplFromJson(
        Map<String, dynamic> json) =>
    _$FetchRepoContentResultImpl(
      path: json['path'] as String,
      encoding: json['encoding'] as String,
      name: json['name'] as String,
      content: json['content'] as String,
    );

Map<String, dynamic> _$$FetchRepoContentResultImplToJson(
        _$FetchRepoContentResultImpl instance) =>
    <String, dynamic>{
      'path': instance.path,
      'encoding': instance.encoding,
      'name': instance.name,
      'content': instance.content,
    };
