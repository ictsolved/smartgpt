import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smart_gpt/core/services/helpers/dio_extension.dart';
import 'package:smart_gpt/features/chat/models/chat_history_model.dart';
import 'package:smart_gpt/features/chat/services/chat_completion_service.dart';

part 'chat_completion_provider.g.dart';

@riverpod
ChatCompletionService chatCompletionService(ChatCompletionServiceRef ref) =>
    ChatCompletionService(ref.client);

@riverpod
Future<ChatCompletionResponse> chatCompletion(
  ChatCompletionRef ref,
  ChatCompletion message,
) {
  return ref.watch(chatCompletionServiceProvider).chatCompletion(message);
}
