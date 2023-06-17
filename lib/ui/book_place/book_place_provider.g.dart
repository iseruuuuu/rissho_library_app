// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_place_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$bookPlaceViewModelHash() =>
    r'b816404d955a2b0a70744936291a7d20d471d23b';

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

abstract class _$BookPlaceViewModel
    extends BuildlessAutoDisposeNotifier<BookPlaceState> {
  late final BookPlaceState initState;

  BookPlaceState build({
    BookPlaceState initState = const BookPlaceState.firstEmpty(),
  });
}

/// See also [BookPlaceViewModel].
@ProviderFor(BookPlaceViewModel)
const bookPlaceViewModelProvider = BookPlaceViewModelFamily();

/// See also [BookPlaceViewModel].
class BookPlaceViewModelFamily extends Family<BookPlaceState> {
  /// See also [BookPlaceViewModel].
  const BookPlaceViewModelFamily();

  /// See also [BookPlaceViewModel].
  BookPlaceViewModelProvider call({
    BookPlaceState initState = const BookPlaceState.firstEmpty(),
  }) {
    return BookPlaceViewModelProvider(
      initState: initState,
    );
  }

  @override
  BookPlaceViewModelProvider getProviderOverride(
    covariant BookPlaceViewModelProvider provider,
  ) {
    return call(
      initState: provider.initState,
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
  String? get name => r'bookPlaceViewModelProvider';
}

/// See also [BookPlaceViewModel].
class BookPlaceViewModelProvider extends AutoDisposeNotifierProviderImpl<
    BookPlaceViewModel, BookPlaceState> {
  /// See also [BookPlaceViewModel].
  BookPlaceViewModelProvider({
    this.initState = const BookPlaceState.firstEmpty(),
  }) : super.internal(
          () => BookPlaceViewModel()..initState = initState,
          from: bookPlaceViewModelProvider,
          name: r'bookPlaceViewModelProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$bookPlaceViewModelHash,
          dependencies: BookPlaceViewModelFamily._dependencies,
          allTransitiveDependencies:
              BookPlaceViewModelFamily._allTransitiveDependencies,
        );

  final BookPlaceState initState;

  @override
  bool operator ==(Object other) {
    return other is BookPlaceViewModelProvider && other.initState == initState;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, initState.hashCode);

    return _SystemHash.finish(hash);
  }

  @override
  BookPlaceState runNotifierBuild(
    covariant BookPlaceViewModel notifier,
  ) {
    return notifier.build(
      initState: initState,
    );
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
