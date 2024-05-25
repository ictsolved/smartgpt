// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_history_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatHistoryImpl _$$ChatHistoryImplFromJson(Map<String, dynamic> json) =>
    _$ChatHistoryImpl(
      typeId: json['typeId'] as String?,
      type: json['type'] as String?,
      model: json['model'] as String?,
      prompt: json['prompt'] as String?,
      response: json['response'] as String?,
      user: json['user'] as String?,
      followUp: (json['followUp'] as List<dynamic>?)
          ?.map((e) => FollowUp.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$ChatHistoryImplToJson(_$ChatHistoryImpl instance) =>
    <String, dynamic>{
      'typeId': instance.typeId,
      'type': instance.type,
      'model': instance.model,
      'prompt': instance.prompt,
      'response': instance.response,
      'user': instance.user,
      'followUp': instance.followUp,
      'createdAt': instance.createdAt?.toIso8601String(),
      'id': instance.id,
    };

_$FollowUpImpl _$$FollowUpImplFromJson(Map<String, dynamic> json) =>
    _$FollowUpImpl(
      prompt: json['prompt'] as String?,
      response: json['response'] as String?,
      createdAt: json['createdAt'] as String?,
    );

Map<String, dynamic> _$$FollowUpImplToJson(_$FollowUpImpl instance) =>
    <String, dynamic>{
      'prompt': instance.prompt,
      'response': instance.response,
      'createdAt': instance.createdAt,
    };

_$ChatCompletionImpl _$$ChatCompletionImplFromJson(Map<String, dynamic> json) =>
    _$ChatCompletionImpl(
      message: json['message'] as String?,
      messageId: json['messageId'] as String?,
    );

Map<String, dynamic> _$$ChatCompletionImplToJson(
        _$ChatCompletionImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'messageId': instance.messageId,
    };

_$ChatCompletionResponseImpl _$$ChatCompletionResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ChatCompletionResponseImpl(
      id: json['id'] as String?,
      object: json['object'] as String?,
      created: (json['created'] as num?)?.toInt(),
      model: json['model'] as String?,
      choices: (json['choices'] as List<dynamic>?)
          ?.map((e) => Choices.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ChatCompletionResponseImplToJson(
        _$ChatCompletionResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'object': instance.object,
      'created': instance.created,
      'model': instance.model,
      'choices': instance.choices,
    };

_$ChoicesImpl _$$ChoicesImplFromJson(Map<String, dynamic> json) =>
    _$ChoicesImpl(
      index: (json['index'] as num?)?.toInt(),
      message: json['message'] == null
          ? null
          : Message.fromJson(json['message'] as Map<String, dynamic>),
      finishReason: json['finishReason'] as String?,
    );

Map<String, dynamic> _$$ChoicesImplToJson(_$ChoicesImpl instance) =>
    <String, dynamic>{
      'index': instance.index,
      'message': instance.message,
      'finishReason': instance.finishReason,
    };

_$MessageImpl _$$MessageImplFromJson(Map<String, dynamic> json) =>
    _$MessageImpl(
      role: json['role'] as String?,
      content: json['content'] as String?,
    );

Map<String, dynamic> _$$MessageImplToJson(_$MessageImpl instance) =>
    <String, dynamic>{
      'role': instance.role,
      'content': instance.content,
    };
