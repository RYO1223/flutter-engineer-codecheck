import 'package:flutter_engineer_codecheck/application/repo_repository.dart';
import 'package:flutter_engineer_codecheck/application/repos/repos_service_state.dart';
import 'package:flutter_engineer_codecheck/domain/app_exception.dart';
import 'package:flutter_engineer_codecheck/domain/entity/repo.dart';
import 'package:flutter_engineer_codecheck/infrastructure/repository/repo_repository_impl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'repos_service.g.dart';

@riverpod
Repo repo(RepoRef ref, int repoId) {
  return ref.watch(
    reposServiceProvider.select((state) {
      return state.repos.firstWhere((repo) => repo.id == repoId);
    }),
  );
}

@riverpod
class ReposService extends _$ReposService {
  @override
  ReposServiceState build() {
    return const ReposServiceState();
  }

  late final RepoRepository _repository = ref.read(repoRepositoryProvider);

  String _query = '';
  final _perPage = 30;
  int _page = 1;

  Future<void> searchRepos(String query) async {
    state = const ReposServiceState(status: ReposServiceStatus.loading);

    _query = query;

    try {
      final repos = await _repository.searchRepos(query);

      state = state.copyWith(
        status: repos.isEmpty
            ? ReposServiceStatus.empty
            : ReposServiceStatus.contentAvailable,
        repos: repos,
      );
    } on AppException catch (e) {
      state = state.copyWith(
        status: ReposServiceStatus.error,
        error: e,
      );
    }
  }

  Future<void> searchReposNextPage() async {
    if (state.status == ReposServiceStatus.allContentLoaded) {
      return;
    }

    state = state.copyWith(
      status: ReposServiceStatus.loadingAdditionalContent,
    );

    try {
      _page++;
      final repos = await _repository.searchRepos(
        _query,
        perPage: _perPage,
        page: _page,
      );
      if (repos.isEmpty) {
        state = state.copyWith(
          status: ReposServiceStatus.allContentLoaded,
        );
        return;
      }

      state = state.copyWith(
        status: ReposServiceStatus.contentAvailable,
        repos: [...state.repos, ...repos],
      );
    } on AppException catch (e) {
      state = state.copyWith(
        status: ReposServiceStatus.contentAvailableWithError,
        error: e,
      );
    }
  }
}
