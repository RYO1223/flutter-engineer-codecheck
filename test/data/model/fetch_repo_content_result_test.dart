// テストではデフォルトで記述したい
// ignore_for_file: no_default_cases
import 'package:flutter_engineer_codecheck/data/model/fetch_repo_content_result.dart';
import 'package:flutter_test/flutter_test.dart';

import '../dummy/dummy_fetch_repo_content_result.dart';

void main() {
  // 引数テストはUI側でテストしているので、ここでは状態遷移のみテストする
  group('FetchRepoContentResult', () {
    test('.decodeContent', () {
      const result = FetchRepoContentResult(
        path: 'path',
        encoding: 'base64',
        name: 'name',
        // testテスト测试테스트
        content: 'dGVzdOODhuOCueODiOa1i+ivle2FjOyKpO2KuA==',
      );

      expect(result.decodedContent(), 'testテスト测试테스트');
    });
    test('.toRepoContent', () {
      final result = dummyFetchRepoContentResult;
      final repoContent = result.toRepoContent();

      expect(repoContent.name, result.name);
      expect(repoContent.path, result.path);
      expect(repoContent.content, result.decodedContent());
    });
  });
}
