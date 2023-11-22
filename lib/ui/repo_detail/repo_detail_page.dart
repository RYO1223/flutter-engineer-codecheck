import 'package:flutter/material.dart';
import 'package:flutter_engineer_codecheck/data/model/repo.dart';
import 'package:flutter_engineer_codecheck/ui/component/repo_label.dart';
import 'package:flutter_engineer_codecheck/ui/component/repo_language_label.dart';
import 'package:flutter_engineer_codecheck/view_model/repo_content/repo_content_view_model.dart';
import 'package:flutter_engineer_codecheck/view_model/repos/repos_view_model.dart';
import 'package:flutter_gen/gen_l10n/l10n.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RepoDetailPage extends ConsumerStatefulWidget {
  const RepoDetailPage({
    required this.repoId,
    super.key,
  });

  final int repoId;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _RepoDetailPageState();
}

class _RepoDetailPageState extends ConsumerState<RepoDetailPage> {
  @override
  Widget build(BuildContext context) {
    final repo = ref.watch(repoProvider(widget.repoId));
    final readmeAsyncValue =
        ref.watch(repoReadmeProvider(repo.owner.login, repo.name));

    return Scaffold(
      appBar: AppBar(
        title: Text(repo.fullName),
      ),
      body: SafeArea(
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  child: Hero(
                    tag: 'repo_image_${repo.id}',
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(120),
                      child: Image.network(
                        repo.owner.avatarUrl,
                        height: 120,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  repo.fullName,
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: Theme.of(context).colorScheme.onSurface,
                      ),
                ),
                const SizedBox(height: 8),
                Text(
                  repo.description ?? '',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Theme.of(context).colorScheme.onSurfaceVariant,
                      ),
                ),
                const SizedBox(height: 8),
                if (repo.language != null) ...[
                  RepoLanguageLabel(language: repo.language!),
                  const SizedBox(
                    height: 8,
                  ),
                ],
                _LabelsRow(repo),
                const SizedBox(height: 32),
                readmeAsyncValue.when(
                  data: (repoContent) {
                    return MarkdownBody(
                      data: repoContent.content,
                      // TODO(kuwano): SVGバッジの表示でエラーが出るので一旦表示しない
                      // ref: https://badgen.org/
                      imageBuilder: (uri, title, alt) {
                        return const SizedBox();
                      },
                    );
                  },
                  error: (_, __) {
                    return Text(L10n.of(context)!.noReadmeFound);
                  },
                  loading: () {
                    return const Align(
                      child: CircularProgressIndicator(),
                    );
                  },
                ),
                const SizedBox(height: 32),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _LabelsRow extends StatelessWidget {
  const _LabelsRow(
    Repo repo,
  ) : _repo = repo;

  final Repo _repo;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8,
      children: [
        RepoLabel(
          type: RepoLabelType.stargazersCount,
          count: _repo.stargazersCount,
          labelVisible: true,
        ),
        RepoLabel(
          type: RepoLabelType.forksCount,
          count: _repo.forksCount,
          labelVisible: true,
        ),
        RepoLabel(
          type: RepoLabelType.watchersCount,
          count: _repo.watchersCount,
          labelVisible: true,
        ),
        RepoLabel(
          type: RepoLabelType.openIssuesCount,
          count: _repo.openIssuesCount,
          labelVisible: true,
        ),
      ],
    );
  }
}
