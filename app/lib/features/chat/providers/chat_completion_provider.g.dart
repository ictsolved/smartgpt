// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_completion_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$chatCompletionServiceHash() =>
    r'689568ac57de987cdef2c31efc4a777da2dc8af2';

/// See also [chatCompletionService].
@ProviderFor(chatCompletionService)
final chatCompletionServiceProvider =
    AutoDisposeProvider<ChatCompletionService>.internal(
  chatCompletionService,
  name: r'chatCompletionServiceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$chatCompletionServiceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef ChatCompletionServiceRef
    = AutoDisposeProviderRef<ChatCompletionService>;
String _$chatCompletionHash() => r'7cdd4ec8a75d185782f536ea27d50e3f12f6bbfa';

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

/// See also [chatCompletion].
@ProviderFor(chatCompletion)
const chatCompletionProvider = ChatCompletionFamily();

/// See also [chatCompletion].
class ChatCompletionFamily extends Family<AsyncValue<ChatCompletionResponse>> {
  /// See also [chatCompletion].
  const ChatCompletionFamily();

  /// See also [chatCompletion].
  ChatCompletionProvider call(
    ChatCompletion message,
  ) {
    return ChatCompletionProvider(
      message,
    );
  }

  @override
  ChatCompletionProvider getProviderOverride(
    covariant ChatCompletionProvider provider,
  ) {
    return call(
      provider.message,
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
  String? get name => r'chatCompletionProvider';
}

/// See also [chatCompletion].
class ChatCompletionProvider
    extends AutoDisposeFutureProvider<ChatCompletionResponse> {
  /// See also [chatCompletion].
  ChatCompletionProvider(
    ChatCompletion message,
  ) : this._internal(
          (ref) => chatCompletion(
            ref as ChatCompletionRef,
            message,
          ),
          from: chatCompletionProvider,
          name: r'chatCompletionProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$chatCompletionHash,
          dependencies: ChatCompletionFamily._dependencies,
          allTransitiveDependencies:
              ChatCompletionFamily._allTransitiveDependencies,
          message: message,
        );

  ChatCompletionProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.message,
  }) : super.internal();

  final ChatCompletion message;

  @override
  Override overrideWith(
    FutureOr<ChatCompletionResponse> Function(ChatCompletionRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ChatCompletionProvider._internal(
        (ref) => create(ref as ChatCompletionRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        message: message,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<ChatCompletionResponse> createElement() {
    return _ChatCompletionProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ChatCompletionProvider && other.message == message;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, message.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ChatCompletionRef
    on AutoDisposeFutureProviderRef<ChatCompletionResponse> {
  /// The parameter `message` of this provider.
  ChatCompletion get message;
}

class _ChatCompletionProviderElement
    extends AutoDisposeFutureProviderElement<ChatCompletionResponse>
    with ChatCompletionRef {
  _ChatCompletionProviderElement(super.provider);

  @override
  ChatCompletion get message => (origin as ChatCompletionProvider).message;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
