// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repo_content_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$repoReadmeHash() => r'aa9e6bb32ce301b849bc2b7d7e1ab5039f1184c5';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [repoReadme].
@ProviderFor(repoReadme)
const repoReadmeProvider = RepoReadmeFamily();

/// See also [repoReadme].
class RepoReadmeFamily extends Family<AsyncValue<RepoContent>> {
  /// See also [repoReadme].
  const RepoReadmeFamily();

  /// See also [repoReadme].
  RepoReadmeProvider call(
    String owner,
    String repo,
  ) {
    return RepoReadmeProvider(
      owner,
      repo,
    );
  }

  @override
  RepoReadmeProvider getProviderOverride(
    covariant RepoReadmeProvider provider,
  ) {
    return call(
      provider.owner,
      provider.repo,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'repoReadmeProvider';
}

/// See also [repoReadme].
class RepoReadmeProvider extends AutoDisposeProvider<AsyncValue<RepoContent>> {
  /// See also [repoReadme].
  RepoReadmeProvider(
    String owner,
    String repo,
  ) : this._internal(
          (ref) => repoReadme(
            ref as RepoReadmeRef,
            owner,
            repo,
          ),
          from: repoReadmeProvider,
          name: r'repoReadmeProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$repoReadmeHash,
          dependencies: RepoReadmeFamily._dependencies,
          allTransitiveDependencies:
              RepoReadmeFamily._allTransitiveDependencies,
          owner: owner,
          repo: repo,
        );

  RepoReadmeProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.owner,
    required this.repo,
  }) : super.internal();

  final String owner;
  final String repo;

  @override
  Override overrideWith(
    AsyncValue<RepoContent> Function(RepoReadmeRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: RepoReadmeProvider._internal(
        (ref) => create(ref as RepoReadmeRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        owner: owner,
        repo: repo,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<AsyncValue<RepoContent>> createElement() {
    return _RepoReadmeProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is RepoReadmeProvider &&
        other.owner == owner &&
        other.repo == repo;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, owner.hashCode);
    hash = _SystemHash.combine(hash, repo.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin RepoReadmeRef on AutoDisposeProviderRef<AsyncValue<RepoContent>> {
  /// The parameter `owner` of this provider.
  String get owner;

  /// The parameter `repo` of this provider.
  String get repo;
}

class _RepoReadmeProviderElement
    extends AutoDisposeProviderElement<AsyncValue<RepoContent>>
    with RepoReadmeRef {
  _RepoReadmeProviderElement(super.provider);

  @override
  String get owner => (origin as RepoReadmeProvider).owner;
  @override
  String get repo => (origin as RepoReadmeProvider).repo;
}

String _$repoContentServiceHash() =>
    r'aed68abf4d6780a48f79271ff0c7de8ba903dffd';

abstract class _$RepoContentService
    extends BuildlessAutoDisposeAsyncNotifier<RepoContent> {
  late final String owner;
  late final String repo;
  late final String path;

  FutureOr<RepoContent> build(
    String owner,
    String repo,
    String path,
  );
}

/// See also [RepoContentService].
@ProviderFor(RepoContentService)
const repoContentServiceProvider = RepoContentServiceFamily();

/// See also [RepoContentService].
class RepoContentServiceFamily extends Family<AsyncValue<RepoContent>> {
  /// See also [RepoContentService].
  const RepoContentServiceFamily();

  /// See also [RepoContentService].
  RepoContentServiceProvider call(
    String owner,
    String repo,
    String path,
  ) {
    return RepoContentServiceProvider(
      owner,
      repo,
      path,
    );
  }

  @override
  RepoContentServiceProvider getProviderOverride(
    covariant RepoContentServiceProvider provider,
  ) {
    return call(
      provider.owner,
      provider.repo,
      provider.path,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'repoContentServiceProvider';
}

/// See also [RepoContentService].
class RepoContentServiceProvider extends AutoDisposeAsyncNotifierProviderImpl<
    RepoContentService, RepoContent> {
  /// See also [RepoContentService].
  RepoContentServiceProvider(
    String owner,
    String repo,
    String path,
  ) : this._internal(
          () => RepoContentService()
            ..owner = owner
            ..repo = repo
            ..path = path,
          from: repoContentServiceProvider,
          name: r'repoContentServiceProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$repoContentServiceHash,
          dependencies: RepoContentServiceFamily._dependencies,
          allTransitiveDependencies:
              RepoContentServiceFamily._allTransitiveDependencies,
          owner: owner,
          repo: repo,
          path: path,
        );

  RepoContentServiceProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.owner,
    required this.repo,
    required this.path,
  }) : super.internal();

  final String owner;
  final String repo;
  final String path;

  @override
  FutureOr<RepoContent> runNotifierBuild(
    covariant RepoContentService notifier,
  ) {
    return notifier.build(
      owner,
      repo,
      path,
    );
  }

  @override
  Override overrideWith(RepoContentService Function() create) {
    return ProviderOverride(
      origin: this,
      override: RepoContentServiceProvider._internal(
        () => create()
          ..owner = owner
          ..repo = repo
          ..path = path,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        owner: owner,
        repo: repo,
        path: path,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<RepoContentService, RepoContent>
      createElement() {
    return _RepoContentServiceProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is RepoContentServiceProvider &&
        other.owner == owner &&
        other.repo == repo &&
        other.path == path;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, owner.hashCode);
    hash = _SystemHash.combine(hash, repo.hashCode);
    hash = _SystemHash.combine(hash, path.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin RepoContentServiceRef
    on AutoDisposeAsyncNotifierProviderRef<RepoContent> {
  /// The parameter `owner` of this provider.
  String get owner;

  /// The parameter `repo` of this provider.
  String get repo;

  /// The parameter `path` of this provider.
  String get path;
}

class _RepoContentServiceProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<RepoContentService,
        RepoContent> with RepoContentServiceRef {
  _RepoContentServiceProviderElement(super.provider);

  @override
  String get owner => (origin as RepoContentServiceProvider).owner;
  @override
  String get repo => (origin as RepoContentServiceProvider).repo;
  @override
  String get path => (origin as RepoContentServiceProvider).path;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
