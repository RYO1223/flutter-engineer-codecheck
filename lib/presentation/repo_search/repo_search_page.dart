import 'package:flutter/material.dart';
import 'package:flutter_engineer_codecheck/application/repos/repos_service.dart';
import 'package:flutter_engineer_codecheck/application/repos/repos_service_state.dart';
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
            ReposServiceStatus.uninitialized => Center(
                child: Text(
                  L10n.of(context)!.searchRepos,
                  textAlign: TextAlign.center,
                ),
              ),
            ReposServiceStatus.loading => ListView.separated(
                itemBuilder: (context, index) {
                  return const RepoListTileShimmer();
                },
                separatorBuilder: (context, index) {
                  return const Divider();
                },
                itemCount: 10,
              ),
            ReposServiceStatus.error => Center(
                child: Text(L10n.of(context)!.errorOccurred),
              ),
            ReposServiceStatus.empty => Center(
                child: Text(
                  L10n.of(context)!.noReposFound,
                  textAlign: TextAlign.center,
                ),
              ),
            ReposServiceStatus.contentAvailable ||
            ReposServiceStatus.contentAvailableWithError ||
            ReposServiceStatus.loadingAdditionalContent ||
            ReposServiceStatus.allContentLoaded =>
              ListView.separated(
                controller: _scrollController,
                itemBuilder: (context, index) {
                  // listの一番下にロード中やエラーの表示用のwidgetを表示する
                  if (index == repos.length) {
                    return switch (reposServiceStatus) {
                      ReposServiceStatus.contentAvailableWithError => Center(
                          child: Text(L10n.of(context)!.errorOccurred),
                        ),
                      ReposServiceStatus.loadingAdditionalContent =>
                        const Center(
                          child: CircularProgressIndicator(),
                        ),
                      ReposServiceStatus.allContentLoaded => Center(
                          child: Text(L10n.of(context)!.noMoreReposFound),
                        ),
                      _ => const SizedBox(),
                    };
                  }
                  return RepoListTile(repo: repos[index]);
                },
                separatorBuilder: (context, index) {
                  return const Divider();
                },
                itemCount: repos.length + 1, // +1はロードやエラーの表示用
              ),
          },
        ),
      ),
    );
  }
}
