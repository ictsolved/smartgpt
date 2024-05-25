import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_history_model.freezed.dart';
part 'chat_history_model.g.dart';

@freezed
class ChatHistory with _$ChatHistory {
  const factory ChatHistory({
    String? typeId,
    String? type,
    String? model,
    String? prompt,
    String? response,
    String? user,
    List<FollowUp>? followUp,
    DateTime? createdAt,
    String? id,
  }) = _ChatHistory;

  factory ChatHistory.fromJson(Map<String, dynamic> json) =>
      _$ChatHistoryFromJson(json);
}

@freezed
class FollowUp with _$FollowUp {
  const factory FollowUp({
    String? prompt,
    String? response,
    String? createdAt,
  }) = _FollowUp;

  factory FollowUp.fromJson(Map<String, dynamic> json) =>
      _$FollowUpFromJson(json);
}

@freezed
class ChatCompletion with _$ChatCompletion {
  const factory ChatCompletion({
    String? message,
    String? messageId,
  }) = _ChatCompletion;

  factory ChatCompletion.fromJson(Map<String, dynamic> json) =>
      _$ChatCompletionFromJson(json);
}

@freezed
class ChatCompletionResponse with _$ChatCompletionResponse {
  const factory ChatCompletionResponse({
    String? id,
    String? object,
    int? created,
    String? model,
    List<Choices>? choices,
  }) = _ChatCompletionResponse;

  factory ChatCompletionResponse.fromJson(Map<String, dynamic> json) =>
      _$ChatCompletionResponseFromJson(json);
}

@freezed
class Choices with _$Choices {
  const factory Choices({
    int? index,
    Message? message,
    String? finishReason,
  }) = _Choices;

  factory Choices.fromJson(Map<String, dynamic> json) =>
      _$ChoicesFromJson(json);
}

@freezed
class Message with _$Message {
  const factory Message({
    String? role,
    String? content,
  }) = _Message;

  factory Message.fromJson(Map<String, dynamic> json) =>
      _$MessageFromJson(json);
}
