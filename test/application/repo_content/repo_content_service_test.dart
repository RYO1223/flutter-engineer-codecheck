// テストではデフォルトで記述したい
// ignore_for_file: no_default_cases
import 'package:flutter_engineer_codecheck/application/repo_content/repo_content_service.dart';
import 'package:flutter_engineer_codecheck/application/repo_repository.dart';
import 'package:flutter_engineer_codecheck/domain/app_exception.dart';
import 'package:flutter_engineer_codecheck/domain/entity/repo_content.dart';
import 'package:flutter_engineer_codecheck/infrastructure/repository/repo_repository_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../domain/dummy_entity/dummy_repo_content.dart';
import '../../test_util/riverpod.dart';

class MockRepoRepository extends Mock implements RepoRepository {}

// ここでは、ViewModelの状態遷移のみをテストしている
// 引数のテストは、UI側で行う
void main() {
  late MockRepoRepository repository;
  late ProviderContainer container;

  setUp(() {
    repository = MockRepoRepository();
    container = createContainer(
      overrides: [
        repoRepositoryProvider.overrideWithValue(repository),
      ],
    );
  });

  When<Future<RepoContent>> whenMockFetchRepoContent() {
    return when(
      () => repository.fetchRepoContent(
        any(),
        any(),
        any(),
      ),
    );
  }

  void mockFetchRepoContentSuccess() {
    whenMockFetchRepoContent().thenAnswer(
      (_) => Future.value(dummyRepoContent),
    );
  }

  void mockFetchRepoContentError() {
    whenMockFetchRepoContent().thenThrow(
      AppException(Exception('error')),
    );
  }

  // 引数テストはUI側でテストしているので、ここでは状態遷移のみテストする
  group('RepoContentViewModel', () {
    test('RepoContent取得', () async {
      // RepoContent取得
      mockFetchRepoContentSuccess();
      container.listen(RepoContentServiceProvider('owner', 'repo', 'path'),
          (previous, next) {
        if (previous == null) {
          expect(next, isA<AsyncLoading<RepoContent>>());
          return;
        }
        if (previous is AsyncLoading<RepoContent>) {
          expect(next, isA<AsyncData<RepoContent>>());
          expect(next.value, dummyRepoContent);
        }
      });

      // wait 1s
      await Future<void>.delayed(const Duration(seconds: 1));
    });
    test('RepoContent取得に失敗', () async {
      // RepoContent取得
      mockFetchRepoContentError();
      container.listen(RepoContentServiceProvider('owner', 'repo', 'path'),
          (previous, next) {
        if (previous == null) {
          expect(next, isA<AsyncLoading<RepoContent>>());
          return;
        }
        if (previous is AsyncLoading<RepoContent>) {
          expect(next, isA<AsyncError<RepoContent>>());
        }
      });

      // wait 1s
      await Future<void>.delayed(const Duration(seconds: 1));
    });
  });
  group('repoReadmeProvider', () {
    test('README取得', () async {
      // README取得
      mockFetchRepoContentSuccess();
      container.listen(RepoReadmeProvider('owner', 'repo'), (previous, next) {
        if (previous == null) {
          expect(next, isA<AsyncLoading<RepoContent>>());
          return;
        }
        if (previous is AsyncLoading<RepoContent>) {
          expect(next, isA<AsyncData<RepoContent>>());
          expect(next.value, dummyRepoContent);
        }
      });

      // wait 1s
      await Future<void>.delayed(const Duration(seconds: 1));
    });
  });
}
