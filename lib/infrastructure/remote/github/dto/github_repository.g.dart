// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'github_repository.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GithubRepositoryImpl _$$GithubRepositoryImplFromJson(
        Map<String, dynamic> json) =>
    _$GithubRepositoryImpl(
      id: json['id'] as int,
      name: json['name'] as String,
      fullName: json['full_name'] as String,
      owner: GithubOwner.fromJson(json['owner'] as Map<String, dynamic>),
      htmlUrl: json['html_url'] as String,
      description: json['description'] as String?,
      updatedAt: json['updated_at'] as String,
      stargazersCount: json['stargazers_count'] as int,
      watchersCount: json['watchers_count'] as int,
      forksCount: json['forks_count'] as int,
      openIssuesCount: json['open_issues_count'] as int,
      language: json['language'] as String?,
    );

Map<String, dynamic> _$$GithubRepositoryImplToJson(
        _$GithubRepositoryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'full_name': instance.fullName,
      'owner': instance.owner,
      'html_url': instance.htmlUrl,
      'description': instance.description,
      'updated_at': instance.updatedAt,
      'stargazers_count': instance.stargazersCount,
      'watchers_count': instance.watchersCount,
      'forks_count': instance.forksCount,
      'open_issues_count': instance.openIssuesCount,
      'language': instance.language,
    };
