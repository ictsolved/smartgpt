// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$authServiceHash() => r'24d235799f707d16e9d213c91bf94bed503ebc4a';

/// See also [authService].
@ProviderFor(authService)
final authServiceProvider = AutoDisposeProvider<AuthService>.internal(
  authService,
  name: r'authServiceProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$authServiceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef AuthServiceRef = AutoDisposeProviderRef<AuthService>;
String _$loginHash() => r'5ec4e598dd17ae9df2244b21ae7f6c1e74f25b36';

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

/// See also [login].
@ProviderFor(login)
const loginProvider = LoginFamily();

/// See also [login].
class LoginFamily extends Family<AsyncValue<LoginResponse>> {
  /// See also [login].
  const LoginFamily();

  /// See also [login].
  LoginProvider call(
    LoginRequest loginRequest,
  ) {
    return LoginProvider(
      loginRequest,
    );
  }

  @override
  LoginProvider getProviderOverride(
    covariant LoginProvider provider,
  ) {
    return call(
      provider.loginRequest,
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
  String? get name => r'loginProvider';
}

/// See also [login].
class LoginProvider extends AutoDisposeFutureProvider<LoginResponse> {
  /// See also [login].
  LoginProvider(
    LoginRequest loginRequest,
  ) : this._internal(
          (ref) => login(
            ref as LoginRef,
            loginRequest,
          ),
          from: loginProvider,
          name: r'loginProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$loginHash,
          dependencies: LoginFamily._dependencies,
          allTransitiveDependencies: LoginFamily._allTransitiveDependencies,
          loginRequest: loginRequest,
        );

  LoginProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.loginRequest,
  }) : super.internal();

  final LoginRequest loginRequest;

  @override
  Override overrideWith(
    FutureOr<LoginResponse> Function(LoginRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: LoginProvider._internal(
        (ref) => create(ref as LoginRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        loginRequest: loginRequest,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<LoginResponse> createElement() {
    return _LoginProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is LoginProvider && other.loginRequest == loginRequest;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, loginRequest.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin LoginRef on AutoDisposeFutureProviderRef<LoginResponse> {
  /// The parameter `loginRequest` of this provider.
  LoginRequest get loginRequest;
}

class _LoginProviderElement
    extends AutoDisposeFutureProviderElement<LoginResponse> with LoginRef {
  _LoginProviderElement(super.provider);

  @override
  LoginRequest get loginRequest => (origin as LoginProvider).loginRequest;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
