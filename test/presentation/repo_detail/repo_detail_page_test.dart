import 'package:flutter_engineer_codecheck/app.dart';
import 'package:flutter_engineer_codecheck/application/repo_content/repo_content_service.dart';
import 'package:flutter_engineer_codecheck/application/repo_repository.dart';
import 'package:flutter_engineer_codecheck/application/repos/repos_service.dart';
import 'package:flutter_engineer_codecheck/presentation/repo_detail/repo_detail_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:mocktail/mocktail.dart';
import 'package:mocktail_image_network/mocktail_image_network.dart';

import '../../domain/dummy_entity/dummy_repo.dart';
import '../../domain/dummy_entity/dummy_repo_content.dart';

class MockRepoRepository extends Mock implements RepoRepository {}

void main() {
  late MockRepoRepository repository;
  late List<Device> devices;

  setUp(() async {
    repository = MockRepoRepository();
    when(
      () => repository.searchRepos(
        any(),
        sort: any(named: 'sort'),
        order: any(named: 'order'),
        perPage: any(named: 'perPage'),
        page: any(named: 'page'),
      ),
    ).thenAnswer((_) => Future.value(dummyRepos()));

    when(
      () => repository.fetchRepoContent(
        any(),
        any(),
        any(),
      ),
    ).thenAnswer(
      (_) => Future.value(dummyRepoContent),
    );

    devices = [
      Device.phone,
      Device.iphone11,
      Device.tabletPortrait,
      Device.tabletLandscape,
    ];

    await loadAppFonts();
  });

  group('RepoDetailPage', () {
    testGoldens('Golden', (tester) async {
      await mockNetworkImages(() async {
        await tester.runAsync(() async {
          await tester.pumpDeviceBuilder(
            DeviceBuilder()
              ..overrideDevicesForAllScenarios(devices: devices)
              ..addScenario(
                widget: const RepoDetailPage(repoId: 1),
              ),
            wrapper: (child) => ProviderScope(
              overrides: [
                repoProvider(1).overrideWith((provider) => dummyRepo(1)),
                repoReadmeProvider('RYO1223', 'flutter_engineer_codecheck')
                    .overrideWithValue(AsyncData(dummyRepoContent)),
              ],
              child: App(home: child),
            ),
          );
        });
        await screenMatchesGolden(tester, 'repo_detail_page');
      });
    });
  });
}
