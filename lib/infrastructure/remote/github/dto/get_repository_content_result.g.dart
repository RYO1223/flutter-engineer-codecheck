// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_repository_content_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetRepositoryContentResultImpl _$$GetRepositoryContentResultImplFromJson(
        Map<String, dynamic> json) =>
    _$GetRepositoryContentResultImpl(
      path: json['path'] as String,
      encoding: json['encoding'] as String,
      name: json['name'] as String,
      content: json['content'] as String,
    );

Map<String, dynamic> _$$GetRepositoryContentResultImplToJson(
        _$GetRepositoryContentResultImpl instance) =>
    <String, dynamic>{
      'path': instance.path,
      'encoding': instance.encoding,
      'name': instance.name,
      'content': instance.content,
    };
