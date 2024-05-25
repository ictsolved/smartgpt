import 'package:dio/dio.dart';
import 'package:smart_gpt/core/constants/repository_constant.dart';
import 'package:smart_gpt/core/services/typedefs.dart';
import 'package:smart_gpt/features/chat/models/chat_history_model.dart';

class ChatCompletionService {
  const ChatCompletionService(this.dio);

  final Dio dio;

  Future<ChatCompletionResponse> chatCompletion(ChatCompletion message) async {
    final response = await dio.post<JsonMap>(
      '$apiBaseUrl/openai/chat-completion',
      data: message.toJson(),
    );
    final res = ChatCompletionResponse.fromJson(response.data!);

    return res;
  }
}
