import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smart_gpt/core/services/helpers/dio_extension.dart';
import 'package:smart_gpt/features/chat/models/chat_history_model.dart';
import 'package:smart_gpt/features/chat/models/chat_model.dart';
import 'package:smart_gpt/features/chat/services/chat_history_service.dart';

part 'chat_history_provider.g.dart';

final chatListProvider = StateProvider<List<Chat>>((ref) {
  return [];
});

final currentMessageIdProvider = StateProvider<String?>((ref) {
  return null;
});

@riverpod
ChatHistoryService chatHistoryService(ChatHistoryServiceRef ref) =>
    ChatHistoryService(ref.client);

@riverpod
Future<List<ChatHistory>> chatHistory(ChatHistoryRef ref) {
  return ref.watch(chatHistoryServiceProvider).chatHistory();
}
