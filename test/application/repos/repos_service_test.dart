// テストではデフォルトで記述したい
// ignore_for_file: no_default_cases
import 'package:flutter_engineer_codecheck/application/repo_repository.dart';
import 'package:flutter_engineer_codecheck/application/repos/repos_service.dart';
import 'package:flutter_engineer_codecheck/application/repos/repos_service_state.dart';
import 'package:flutter_engineer_codecheck/domain/app_exception.dart';
import 'package:flutter_engineer_codecheck/domain/entity/repo.dart';
import 'package:flutter_engineer_codecheck/infrastructure/repository/repo_repository_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../domain/dummy_entity/dummy_repo.dart';
import '../../test_util/riverpod.dart';

class MockRepoRepository extends Mock implements RepoRepository {}

// ここでは、ViewModelの状態遷移のみをテストしている
// 引数のテストは、UI側で行う
void main() {
  late MockRepoRepository repository;
  late ProviderContainer container;
  late ReposService viewModel;

  setUp(() {
    repository = MockRepoRepository();
    container = createContainer(
      overrides: [
        repoRepositoryProvider.overrideWithValue(repository),
      ],
    );
    viewModel = container.read(reposServiceProvider.notifier);
  });

  When<Future<List<Repo>>> whenMockSearchReposAny() {
    return when(
      () => repository.searchRepos(
        any(),
        sort: any(named: 'sort'),
        order: any(named: 'order'),
        perPage: any(named: 'perPage'),
        page: any(named: 'page'),
      ),
    );
  }

  void mockSearchReposSuccess() {
    whenMockSearchReposAny().thenAnswer(
      (_) => Future.value(dummyRepos()),
    );
  }

  void mockSearchReposNextPageSuccess() {
    whenMockSearchReposAny().thenAnswer(
      (_) => Future.value(dummyRepos(idStartWith: 11)),
    );
  }

  void mockSearchReposEmpty() {
    whenMockSearchReposAny().thenAnswer(
      (_) => Future.value([]),
    );
  }

  void mockSearchReposError() {
    whenMockSearchReposAny().thenThrow(
      AppException(Exception('error')),
    );
  }

  // 引数テストはUI側でテストしているので、ここでは状態遷移のみテストする
  group('ReposService', () {
    test('初回検索', () async {
      final subscription =
          container.listen(reposServiceProvider, (previous, next) {
        if (previous == null) {
          expect(next.status, ReposServiceStatus.uninitialized);
          return;
        }
        switch (previous.status) {
          case ReposServiceStatus.uninitialized:
            expect(next.status, ReposServiceStatus.loading);
          case ReposServiceStatus.loading:
            expect(next.status, ReposServiceStatus.contentAvailable);
          default:
            fail('unexpected state transition');
        }
      });
      // 初回クエリ
      mockSearchReposSuccess();
      await viewModel.searchRepos('test');

      final state = subscription.read();

      expect(state.status, ReposServiceStatus.contentAvailable);
      expect(state.repos.length, 10);
      expect(state.error, isNull);
    });
    test('追加検索', () async {
      // 初回クエリ
      mockSearchReposSuccess();
      await viewModel.searchRepos('test');

      final subscription =
          container.listen(reposServiceProvider, (previous, next) {
        if (previous == null) {
          return;
        }
        switch (previous.status) {
          case ReposServiceStatus.contentAvailable:
            expect(
              next.status,
              ReposServiceStatus.loadingAdditionalContent,
            );
          case ReposServiceStatus.loadingAdditionalContent:
            expect(next.status, ReposServiceStatus.contentAvailable);
          default:
            fail('unexpected state transition');
        }
      });

      // 追加クエリ
      mockSearchReposNextPageSuccess();
      await viewModel.searchReposNextPage();

      final state = subscription.read();

      expect(state.status, ReposServiceStatus.contentAvailable);
      expect(state.repos.length, 20);
      expect(state.repos[0].id, 1);
      expect(state.error, isNull);
    });
    test('全てのデータを取得', () async {
      // 初回クエリ
      mockSearchReposSuccess();
      await viewModel.searchRepos('test');

      final subscription =
          container.listen(reposServiceProvider, (previous, next) {
        if (previous == null) {
          return;
        }
        switch (previous.status) {
          case ReposServiceStatus.contentAvailable:
            expect(
              next.status,
              ReposServiceStatus.loadingAdditionalContent,
            );
          case ReposServiceStatus.loadingAdditionalContent:
            expect(next.status, ReposServiceStatus.allContentLoaded);
          default:
            fail('unexpected state transition');
        }
      });

      // 追加クエリ
      mockSearchReposEmpty();
      await viewModel.searchReposNextPage();

      final state = subscription.read();

      expect(state.status, ReposServiceStatus.allContentLoaded);
      expect(state.repos.length, 10);
      expect(state.error, isNull);
    });
    test('再検索', () async {
      // 初回クエリ
      mockSearchReposSuccess();
      await viewModel.searchRepos('test');

      final subscription =
          container.listen(reposServiceProvider, (previous, next) {
        if (previous == null) {
          return;
        }
        switch (previous.status) {
          case ReposServiceStatus.contentAvailable:
            expect(
              next.status,
              ReposServiceStatus.loading,
            );
          case ReposServiceStatus.loading:
            expect(next.status, ReposServiceStatus.contentAvailable);
          default:
            fail('unexpected state transition');
        }
      });

      // 再検索
      mockSearchReposSuccess();
      await viewModel.searchRepos('test2');

      final state = subscription.read();

      expect(state.status, ReposServiceStatus.contentAvailable);
      expect(state.repos.length, 10);
      expect(state.error, isNull);
    });
    test('初回検索で空', () async {
      // 初回クエリ
      mockSearchReposEmpty();
      await viewModel.searchRepos('test');

      final subscription =
          container.listen(reposServiceProvider, (previous, next) {
        if (previous == null) {
          return;
        }
        switch (previous.status) {
          case ReposServiceStatus.loading:
            expect(next.status, ReposServiceStatus.empty);
          default:
            fail('unexpected state transition');
        }
      });

      final state = subscription.read();

      expect(state.status, ReposServiceStatus.empty);
      expect(state.repos.length, 0);
      expect(state.error, isNull);
    });
    test('初回検索でエラー', () async {
      // 初回クエリ
      mockSearchReposError();
      await viewModel.searchRepos('test');

      final subscription =
          container.listen(reposServiceProvider, (previous, next) {
        if (previous == null) {
          return;
        }
        switch (previous.status) {
          case ReposServiceStatus.loading:
            expect(next.status, ReposServiceStatus.error);
          default:
            fail('unexpected state transition');
        }
      });

      final state = subscription.read();

      expect(state.status, ReposServiceStatus.error);
      expect(state.repos.length, 0);
      expect(state.error, isA<AppException>());
    });
    test('追加検索でエラー', () async {
      // 初回クエリ
      mockSearchReposSuccess();
      await viewModel.searchRepos('test');

      final subscription =
          container.listen(reposServiceProvider, (previous, next) {
        if (previous == null) {
          return;
        }
        switch (previous.status) {
          case ReposServiceStatus.contentAvailable:
            expect(
              next.status,
              ReposServiceStatus.loadingAdditionalContent,
            );
          case ReposServiceStatus.loadingAdditionalContent:
            expect(next.status, ReposServiceStatus.contentAvailableWithError);
          default:
            fail('unexpected state transition');
        }
      });

      // 追加クエリ
      mockSearchReposError();
      await viewModel.searchReposNextPage();

      final state = subscription.read();

      expect(state.status, ReposServiceStatus.contentAvailableWithError);
      expect(state.repos.length, 10);
      expect(state.error, isA<AppException>());
    });
  });
}
