import 'package:flutter/material.dart';
import 'package:flutter_engineer_codecheck/app.dart';
import 'package:flutter_engineer_codecheck/presentation/repo_search/search_app_bar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('SearchAppBar', () {
    testWidgets('0文字では検索できない', (tester) async {
      var submitted = false;

      await tester.pumpWidget(
        ProviderScope(
          child: App(
            home: Scaffold(
              body: SearchAppBar(
                textEditingController: TextEditingController(),
                onSubmitted: (_) {
                  submitted = true;
                },
              ),
            ),
          ),
        ),
      );

      final finder = find.byType(SearchAppBar);
      expect(finder, findsOneWidget);
      await tester.tap(finder);
      await tester.testTextInput.receiveAction(TextInputAction.done);

      expect(submitted, false);
    });
    testWidgets('256文字以上で検索できない', (tester) async {
      final controller = TextEditingController();
      await tester.pumpWidget(
        ProviderScope(
          child: App(
            home: Scaffold(
              body: SearchAppBar(
                textEditingController: controller,
              ),
            ),
          ),
        ),
      );

      final finder = find.byType(SearchAppBar);
      expect(finder, findsOneWidget);
      await tester.tap(finder);
      await tester.enterText(finder, 'a' * 256);
      await tester.testTextInput.receiveAction(TextInputAction.done);

      expect(controller.text, 'a' * 255);
    });
  });
}
