// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_history_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$chatHistoryServiceHash() =>
    r'db135bc59ad155215fd355393d1ce90be28eee2a';

/// See also [chatHistoryService].
@ProviderFor(chatHistoryService)
final chatHistoryServiceProvider =
    AutoDisposeProvider<ChatHistoryService>.internal(
  chatHistoryService,
  name: r'chatHistoryServiceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$chatHistoryServiceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef ChatHistoryServiceRef = AutoDisposeProviderRef<ChatHistoryService>;
String _$chatHistoryHash() => r'49e754ba6e6ad73a5ad0126916744a9fea737097';

/// See also [chatHistory].
@ProviderFor(chatHistory)
final chatHistoryProvider =
    AutoDisposeFutureProvider<List<ChatHistory>>.internal(
  chatHistory,
  name: r'chatHistoryProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$chatHistoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef ChatHistoryRef = AutoDisposeFutureProviderRef<List<ChatHistory>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
