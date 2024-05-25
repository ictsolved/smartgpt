import 'package:dio/dio.dart';
import 'package:smart_gpt/core/constants/repository_constant.dart';
import 'package:smart_gpt/core/services/typedefs.dart';
import 'package:smart_gpt/features/chat/models/chat_history_model.dart';

class ChatHistoryService {
  const ChatHistoryService(this.dio);

  final Dio dio;

  Future<List<ChatHistory>> chatHistory() async {
    final response = await dio.get<List<dynamic>>('$apiBaseUrl/openai/chats');
    return List<ChatHistory>.from(
      response.data!.map((e) => ChatHistory.fromJson(e as JsonMap)),
    );
  }
}
