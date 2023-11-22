// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repos_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$repoHash() => r'e06bbd7e6adc5fef913e6640430435c034a05cce';

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

/// See also [repo].
@ProviderFor(repo)
const repoProvider = RepoFamily();

/// See also [repo].
class RepoFamily extends Family<Repo> {
  /// See also [repo].
  const RepoFamily();

  /// See also [repo].
  RepoProvider call(
    int repoId,
  ) {
    return RepoProvider(
      repoId,
    );
  }

  @override
  RepoProvider getProviderOverride(
    covariant RepoProvider provider,
  ) {
    return call(
      provider.repoId,
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
  String? get name => r'repoProvider';
}

/// See also [repo].
class RepoProvider extends AutoDisposeProvider<Repo> {
  /// See also [repo].
  RepoProvider(
    int repoId,
  ) : this._internal(
          (ref) => repo(
            ref as RepoRef,
            repoId,
          ),
          from: repoProvider,
          name: r'repoProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product') ? null : _$repoHash,
          dependencies: RepoFamily._dependencies,
          allTransitiveDependencies: RepoFamily._allTransitiveDependencies,
          repoId: repoId,
        );

  RepoProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.repoId,
  }) : super.internal();

  final int repoId;

  @override
  Override overrideWith(
    Repo Function(RepoRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: RepoProvider._internal(
        (ref) => create(ref as RepoRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        repoId: repoId,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<Repo> createElement() {
    return _RepoProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is RepoProvider && other.repoId == repoId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, repoId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin RepoRef on AutoDisposeProviderRef<Repo> {
  /// The parameter `repoId` of this provider.
  int get repoId;
}

class _RepoProviderElement extends AutoDisposeProviderElement<Repo>
    with RepoRef {
  _RepoProviderElement(super.provider);

  @override
  int get repoId => (origin as RepoProvider).repoId;
}

String _$reposServiceHash() => r'dfc4f83581099e0ead3741042e623aaf79a8038b';

/// See also [ReposService].
@ProviderFor(ReposService)
final reposServiceProvider =
    AutoDisposeNotifierProvider<ReposService, ReposServiceState>.internal(
  ReposService.new,
  name: r'reposServiceProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$reposServiceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ReposService = AutoDisposeNotifier<ReposServiceState>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
