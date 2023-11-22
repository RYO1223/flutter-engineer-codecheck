// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repo_contents_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$repoReadmeHash() => r'95b982d953e1fe9e34d9077fc7dacfe42c9edf17';

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

String _$repoContentViewModelHash() =>
    r'd2a3b50f995187c09e7bbe0c300cc8a0be2a9ffe';

abstract class _$RepoContentViewModel
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

/// See also [RepoContentViewModel].
@ProviderFor(RepoContentViewModel)
const repoContentViewModelProvider = RepoContentViewModelFamily();

/// See also [RepoContentViewModel].
class RepoContentViewModelFamily extends Family<AsyncValue<RepoContent>> {
  /// See also [RepoContentViewModel].
  const RepoContentViewModelFamily();

  /// See also [RepoContentViewModel].
  RepoContentViewModelProvider call(
    String owner,
    String repo,
    String path,
  ) {
    return RepoContentViewModelProvider(
      owner,
      repo,
      path,
    );
  }

  @override
  RepoContentViewModelProvider getProviderOverride(
    covariant RepoContentViewModelProvider provider,
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
  String? get name => r'repoContentViewModelProvider';
}

/// See also [RepoContentViewModel].
class RepoContentViewModelProvider extends AutoDisposeAsyncNotifierProviderImpl<
    RepoContentViewModel, RepoContent> {
  /// See also [RepoContentViewModel].
  RepoContentViewModelProvider(
    String owner,
    String repo,
    String path,
  ) : this._internal(
          () => RepoContentViewModel()
            ..owner = owner
            ..repo = repo
            ..path = path,
          from: repoContentViewModelProvider,
          name: r'repoContentViewModelProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$repoContentViewModelHash,
          dependencies: RepoContentViewModelFamily._dependencies,
          allTransitiveDependencies:
              RepoContentViewModelFamily._allTransitiveDependencies,
          owner: owner,
          repo: repo,
          path: path,
        );

  RepoContentViewModelProvider._internal(
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
    covariant RepoContentViewModel notifier,
  ) {
    return notifier.build(
      owner,
      repo,
      path,
    );
  }

  @override
  Override overrideWith(RepoContentViewModel Function() create) {
    return ProviderOverride(
      origin: this,
      override: RepoContentViewModelProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<RepoContentViewModel, RepoContent>
      createElement() {
    return _RepoContentViewModelProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is RepoContentViewModelProvider &&
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

mixin RepoContentViewModelRef
    on AutoDisposeAsyncNotifierProviderRef<RepoContent> {
  /// The parameter `owner` of this provider.
  String get owner;

  /// The parameter `repo` of this provider.
  String get repo;

  /// The parameter `path` of this provider.
  String get path;
}

class _RepoContentViewModelProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<RepoContentViewModel,
        RepoContent> with RepoContentViewModelRef {
  _RepoContentViewModelProviderElement(super.provider);

  @override
  String get owner => (origin as RepoContentViewModelProvider).owner;
  @override
  String get repo => (origin as RepoContentViewModelProvider).repo;
  @override
  String get path => (origin as RepoContentViewModelProvider).path;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
