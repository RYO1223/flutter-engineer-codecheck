import 'package:flutter/material.dart';
import 'package:flutter_engineer_codecheck/application/repos/repos_service.dart';
import 'package:flutter_engineer_codecheck/application/repos/repos_service_state.dart';
import 'package:flutter_engineer_codecheck/domain/entity/repo.dart';
import 'package:flutter_engineer_codecheck/presentation/repo_search/repo_list_tile.dart';
import 'package:flutter_engineer_codecheck/presentation/repo_search/search_app_bar.dart';
import 'package:flutter_gen/gen_l10n/l10n.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RepoSearchPage extends ConsumerStatefulWidget {
  const RepoSearchPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _RepoSearchPageState();
}

class _RepoSearchPageState extends ConsumerState<RepoSearchPage> {
  late final TextEditingController _textEditingController;
  late final ScrollController _scrollController;

  @override
  void initState() {
    _textEditingController = TextEditingController();
    _scrollController = ScrollController()
      // スクロールが一番下に到達したら次のページを読み込む
      ..addListener(() {
        final isBottom = _scrollController.position.pixels ==
            _scrollController.position.maxScrollExtent;
        if (isBottom) {
          ref.read(reposServiceProvider.notifier).searchReposNextPage();
        }
      });
    super.initState();
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final reposServiceState = ref.watch(reposServiceProvider);
    final reposService = ref.watch(reposServiceProvider.notifier);

    final repos = reposServiceState.repos;
    final reposServiceStatus = reposServiceState.status;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: SearchAppBar(
          textEditingController: _textEditingController,
          onSubmitted: reposService.searchRepos,
        ),
      ),
      body: SafeArea(
        bottom: false,
        child: RefreshIndicator(
          onRefresh: () async {
            await reposService.searchRepos(_textEditingController.text);
          },
          child: switch (reposServiceState.status) {
            ReposServiceStatus.uninitialized => const _BodyUninitialized(),
            ReposServiceStatus.loading => const _BodyLoading(),
            ReposServiceStatus.error => const _BodyError(),
            ReposServiceStatus.empty => const _BodyEmpty(),
            ReposServiceStatus.contentAvailable ||
            ReposServiceStatus.contentAvailableWithError ||
            ReposServiceStatus.loadingAdditionalContent ||
            ReposServiceStatus.allContentLoaded =>
              _BodyList(
                _scrollController,
                repos,
                reposServiceStatus,
              ),
          },
        ),
      ),
    );
  }
}

class _BodyUninitialized extends ConsumerWidget {
  const _BodyUninitialized();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Center(
      child: Text(
        L10n.of(context)!.searchRepos,
        textAlign: TextAlign.center,
      ),
    );
  }
}

class _BodyLoading extends StatelessWidget {
  const _BodyLoading();

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return const RepoListTileShimmer();
      },
      separatorBuilder: (context, index) {
        return const Divider();
      },
      itemCount: 10,
    );
  }
}

class _BodyError extends ConsumerWidget {
  const _BodyError();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Center(
      child: Text(L10n.of(context)!.errorOccurred),
    );
  }
}

class _BodyEmpty extends StatelessWidget {
  const _BodyEmpty();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        L10n.of(context)!.noReposFound,
        textAlign: TextAlign.center,
      ),
    );
  }
}

class _BodyList extends StatelessWidget {
  const _BodyList(
    this._scrollController,
    this._repos,
    this._reposServiceStatus,
  );

  final ScrollController _scrollController;
  final List<Repo> _repos;
  final ReposServiceStatus _reposServiceStatus;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      controller: _scrollController,
      itemBuilder: (context, index) {
        // listの一番下にロード中やエラーの表示用のwidgetを表示する
        if (index == _repos.length) {
          return _LastListTile(_reposServiceStatus);
        }
        return RepoListTile(repo: _repos[index]);
      },
      separatorBuilder: (context, index) {
        return const Divider();
      },
      itemCount: _repos.length + 1, // +1はロードやエラーの表示用
    );
  }
}

class _LastListTile extends StatelessWidget {
  const _LastListTile(
    this._reposServiceStatus,
  );

  final ReposServiceStatus _reposServiceStatus;

  @override
  Widget build(BuildContext context) {
    switch (_reposServiceStatus) {
      case ReposServiceStatus.contentAvailableWithError:
        return Padding(
          padding: const EdgeInsets.all(16),
          child: Center(
            child: Text(L10n.of(context)!.errorOccurred),
          ),
        );
      case ReposServiceStatus.loadingAdditionalContent:
        return const Padding(
          padding: EdgeInsets.all(16),
          child: Center(
            child: CircularProgressIndicator(),
          ),
        );
      case ReposServiceStatus.allContentLoaded:
        return Padding(
          padding: const EdgeInsets.all(16),
          child: Center(
            child: Text(L10n.of(context)!.noMoreReposFound),
          ),
        );
      case ReposServiceStatus.uninitialized:
      case ReposServiceStatus.loading:
      case ReposServiceStatus.error:
      case ReposServiceStatus.empty:
      case ReposServiceStatus.contentAvailable:
        return const SizedBox(height: 32);
    }
  }
}
