import 'package:flutter/material.dart';
import 'package:flutter_engineer_codecheck/ui/repo_search/repo_list_tile.dart';
import 'package:flutter_engineer_codecheck/ui/repo_search/search_app_bar.dart';
import 'package:flutter_engineer_codecheck/view_model/repos/repos_view_model.dart';
import 'package:flutter_engineer_codecheck/view_model/repos/repos_view_model_state.dart';
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
          ref.read(reposViewModelProvider.notifier).searchReposNextPage();
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
    final reposViewModelState = ref.watch(reposViewModelProvider);
    final reposViewModel = ref.watch(reposViewModelProvider.notifier);

    final repos = reposViewModelState.repos;
    final reposViewModelStatus = reposViewModelState.status;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: SearchAppBar(
          textEditingController: _textEditingController,
          onSubmitted: reposViewModel.searchRepos,
        ),
      ),
      body: SafeArea(
        bottom: false,
        child: RefreshIndicator(
          onRefresh: () async {
            await reposViewModel.searchRepos(_textEditingController.text);
          },
          child: switch (reposViewModelState.status) {
            ReposViewModelStatus.uninitialized => Center(
                child: Text(
                  L10n.of(context)!.searchRepos,
                  textAlign: TextAlign.center,
                ),
              ),
            ReposViewModelStatus.loading => ListView.separated(
                itemBuilder: (context, index) {
                  return const RepoListTileShimmer();
                },
                separatorBuilder: (context, index) {
                  return const Divider();
                },
                itemCount: 10,
              ),
            ReposViewModelStatus.error => Center(
                child: Text(L10n.of(context)!.errorOccurred),
              ),
            ReposViewModelStatus.empty => Center(
                child: Text(
                  L10n.of(context)!.noReposFound,
                  textAlign: TextAlign.center,
                ),
              ),
            ReposViewModelStatus.contentAvailable ||
            ReposViewModelStatus.contentAvailableWithError ||
            ReposViewModelStatus.loadingAdditionalContent ||
            ReposViewModelStatus.allContentLoaded =>
              ListView.separated(
                controller: _scrollController,
                itemBuilder: (context, index) {
                  // listの一番下にロード中やエラーの表示用のwidgetを表示する
                  if (index == repos.length) {
                    return switch (reposViewModelStatus) {
                      ReposViewModelStatus.contentAvailableWithError => Center(
                          child: Text(L10n.of(context)!.errorOccurred),
                        ),
                      ReposViewModelStatus.loadingAdditionalContent =>
                        const Center(
                          child: CircularProgressIndicator(),
                        ),
                      ReposViewModelStatus.allContentLoaded => Center(
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
