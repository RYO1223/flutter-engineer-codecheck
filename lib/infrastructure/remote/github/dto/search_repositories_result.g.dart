// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_repositories_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchRepositoriesResultImpl _$$SearchRepositoriesResultImplFromJson(
        Map<String, dynamic> json) =>
    _$SearchRepositoriesResultImpl(
      totalCount: json['total_count'] as int,
      incompleteResults: json['incomplete_results'] as bool,
      items: (json['items'] as List<dynamic>)
          .map((e) => GithubRepository.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SearchRepositoriesResultImplToJson(
        _$SearchRepositoriesResultImpl instance) =>
    <String, dynamic>{
      'total_count': instance.totalCount,
      'incomplete_results': instance.incompleteResults,
      'items': instance.items,
    };
