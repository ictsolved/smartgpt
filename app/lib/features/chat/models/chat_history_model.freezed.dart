// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_history_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChatHistory _$ChatHistoryFromJson(Map<String, dynamic> json) {
  return _ChatHistory.fromJson(json);
}

/// @nodoc
mixin _$ChatHistory {
  String? get typeId => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get model => throw _privateConstructorUsedError;
  String? get prompt => throw _privateConstructorUsedError;
  String? get response => throw _privateConstructorUsedError;
  String? get user => throw _privateConstructorUsedError;
  List<FollowUp>? get followUp => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatHistoryCopyWith<ChatHistory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatHistoryCopyWith<$Res> {
  factory $ChatHistoryCopyWith(
          ChatHistory value, $Res Function(ChatHistory) then) =
      _$ChatHistoryCopyWithImpl<$Res, ChatHistory>;
  @useResult
  $Res call(
      {String? typeId,
      String? type,
      String? model,
      String? prompt,
      String? response,
      String? user,
      List<FollowUp>? followUp,
      DateTime? createdAt,
      String? id});
}

/// @nodoc
class _$ChatHistoryCopyWithImpl<$Res, $Val extends ChatHistory>
    implements $ChatHistoryCopyWith<$Res> {
  _$ChatHistoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? typeId = freezed,
    Object? type = freezed,
    Object? model = freezed,
    Object? prompt = freezed,
    Object? response = freezed,
    Object? user = freezed,
    Object? followUp = freezed,
    Object? createdAt = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      typeId: freezed == typeId
          ? _value.typeId
          : typeId // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      model: freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String?,
      prompt: freezed == prompt
          ? _value.prompt
          : prompt // ignore: cast_nullable_to_non_nullable
              as String?,
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String?,
      followUp: freezed == followUp
          ? _value.followUp
          : followUp // ignore: cast_nullable_to_non_nullable
              as List<FollowUp>?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChatHistoryImplCopyWith<$Res>
    implements $ChatHistoryCopyWith<$Res> {
  factory _$$ChatHistoryImplCopyWith(
          _$ChatHistoryImpl value, $Res Function(_$ChatHistoryImpl) then) =
      __$$ChatHistoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? typeId,
      String? type,
      String? model,
      String? prompt,
      String? response,
      String? user,
      List<FollowUp>? followUp,
      DateTime? createdAt,
      String? id});
}

/// @nodoc
class __$$ChatHistoryImplCopyWithImpl<$Res>
    extends _$ChatHistoryCopyWithImpl<$Res, _$ChatHistoryImpl>
    implements _$$ChatHistoryImplCopyWith<$Res> {
  __$$ChatHistoryImplCopyWithImpl(
      _$ChatHistoryImpl _value, $Res Function(_$ChatHistoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? typeId = freezed,
    Object? type = freezed,
    Object? model = freezed,
    Object? prompt = freezed,
    Object? response = freezed,
    Object? user = freezed,
    Object? followUp = freezed,
    Object? createdAt = freezed,
    Object? id = freezed,
  }) {
    return _then(_$ChatHistoryImpl(
      typeId: freezed == typeId
          ? _value.typeId
          : typeId // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      model: freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String?,
      prompt: freezed == prompt
          ? _value.prompt
          : prompt // ignore: cast_nullable_to_non_nullable
              as String?,
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String?,
      followUp: freezed == followUp
          ? _value._followUp
          : followUp // ignore: cast_nullable_to_non_nullable
              as List<FollowUp>?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatHistoryImpl with DiagnosticableTreeMixin implements _ChatHistory {
  const _$ChatHistoryImpl(
      {this.typeId,
      this.type,
      this.model,
      this.prompt,
      this.response,
      this.user,
      final List<FollowUp>? followUp,
      this.createdAt,
      this.id})
      : _followUp = followUp;

  factory _$ChatHistoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatHistoryImplFromJson(json);

  @override
  final String? typeId;
  @override
  final String? type;
  @override
  final String? model;
  @override
  final String? prompt;
  @override
  final String? response;
  @override
  final String? user;
  final List<FollowUp>? _followUp;
  @override
  List<FollowUp>? get followUp {
    final value = _followUp;
    if (value == null) return null;
    if (_followUp is EqualUnmodifiableListView) return _followUp;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final DateTime? createdAt;
  @override
  final String? id;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatHistory(typeId: $typeId, type: $type, model: $model, prompt: $prompt, response: $response, user: $user, followUp: $followUp, createdAt: $createdAt, id: $id)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ChatHistory'))
      ..add(DiagnosticsProperty('typeId', typeId))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('model', model))
      ..add(DiagnosticsProperty('prompt', prompt))
      ..add(DiagnosticsProperty('response', response))
      ..add(DiagnosticsProperty('user', user))
      ..add(DiagnosticsProperty('followUp', followUp))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('id', id));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatHistoryImpl &&
            (identical(other.typeId, typeId) || other.typeId == typeId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.prompt, prompt) || other.prompt == prompt) &&
            (identical(other.response, response) ||
                other.response == response) &&
            (identical(other.user, user) || other.user == user) &&
            const DeepCollectionEquality().equals(other._followUp, _followUp) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      typeId,
      type,
      model,
      prompt,
      response,
      user,
      const DeepCollectionEquality().hash(_followUp),
      createdAt,
      id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatHistoryImplCopyWith<_$ChatHistoryImpl> get copyWith =>
      __$$ChatHistoryImplCopyWithImpl<_$ChatHistoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatHistoryImplToJson(
      this,
    );
  }
}

abstract class _ChatHistory implements ChatHistory {
  const factory _ChatHistory(
      {final String? typeId,
      final String? type,
      final String? model,
      final String? prompt,
      final String? response,
      final String? user,
      final List<FollowUp>? followUp,
      final DateTime? createdAt,
      final String? id}) = _$ChatHistoryImpl;

  factory _ChatHistory.fromJson(Map<String, dynamic> json) =
      _$ChatHistoryImpl.fromJson;

  @override
  String? get typeId;
  @override
  String? get type;
  @override
  String? get model;
  @override
  String? get prompt;
  @override
  String? get response;
  @override
  String? get user;
  @override
  List<FollowUp>? get followUp;
  @override
  DateTime? get createdAt;
  @override
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$ChatHistoryImplCopyWith<_$ChatHistoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FollowUp _$FollowUpFromJson(Map<String, dynamic> json) {
  return _FollowUp.fromJson(json);
}

/// @nodoc
mixin _$FollowUp {
  String? get prompt => throw _privateConstructorUsedError;
  String? get response => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FollowUpCopyWith<FollowUp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FollowUpCopyWith<$Res> {
  factory $FollowUpCopyWith(FollowUp value, $Res Function(FollowUp) then) =
      _$FollowUpCopyWithImpl<$Res, FollowUp>;
  @useResult
  $Res call({String? prompt, String? response, String? createdAt});
}

/// @nodoc
class _$FollowUpCopyWithImpl<$Res, $Val extends FollowUp>
    implements $FollowUpCopyWith<$Res> {
  _$FollowUpCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prompt = freezed,
    Object? response = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      prompt: freezed == prompt
          ? _value.prompt
          : prompt // ignore: cast_nullable_to_non_nullable
              as String?,
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FollowUpImplCopyWith<$Res>
    implements $FollowUpCopyWith<$Res> {
  factory _$$FollowUpImplCopyWith(
          _$FollowUpImpl value, $Res Function(_$FollowUpImpl) then) =
      __$$FollowUpImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? prompt, String? response, String? createdAt});
}

/// @nodoc
class __$$FollowUpImplCopyWithImpl<$Res>
    extends _$FollowUpCopyWithImpl<$Res, _$FollowUpImpl>
    implements _$$FollowUpImplCopyWith<$Res> {
  __$$FollowUpImplCopyWithImpl(
      _$FollowUpImpl _value, $Res Function(_$FollowUpImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prompt = freezed,
    Object? response = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$FollowUpImpl(
      prompt: freezed == prompt
          ? _value.prompt
          : prompt // ignore: cast_nullable_to_non_nullable
              as String?,
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FollowUpImpl with DiagnosticableTreeMixin implements _FollowUp {
  const _$FollowUpImpl({this.prompt, this.response, this.createdAt});

  factory _$FollowUpImpl.fromJson(Map<String, dynamic> json) =>
      _$$FollowUpImplFromJson(json);

  @override
  final String? prompt;
  @override
  final String? response;
  @override
  final String? createdAt;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FollowUp(prompt: $prompt, response: $response, createdAt: $createdAt)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FollowUp'))
      ..add(DiagnosticsProperty('prompt', prompt))
      ..add(DiagnosticsProperty('response', response))
      ..add(DiagnosticsProperty('createdAt', createdAt));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FollowUpImpl &&
            (identical(other.prompt, prompt) || other.prompt == prompt) &&
            (identical(other.response, response) ||
                other.response == response) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, prompt, response, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FollowUpImplCopyWith<_$FollowUpImpl> get copyWith =>
      __$$FollowUpImplCopyWithImpl<_$FollowUpImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FollowUpImplToJson(
      this,
    );
  }
}

abstract class _FollowUp implements FollowUp {
  const factory _FollowUp(
      {final String? prompt,
      final String? response,
      final String? createdAt}) = _$FollowUpImpl;

  factory _FollowUp.fromJson(Map<String, dynamic> json) =
      _$FollowUpImpl.fromJson;

  @override
  String? get prompt;
  @override
  String? get response;
  @override
  String? get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$FollowUpImplCopyWith<_$FollowUpImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ChatCompletion _$ChatCompletionFromJson(Map<String, dynamic> json) {
  return _ChatCompletion.fromJson(json);
}

/// @nodoc
mixin _$ChatCompletion {
  String? get message => throw _privateConstructorUsedError;
  String? get messageId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatCompletionCopyWith<ChatCompletion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatCompletionCopyWith<$Res> {
  factory $ChatCompletionCopyWith(
          ChatCompletion value, $Res Function(ChatCompletion) then) =
      _$ChatCompletionCopyWithImpl<$Res, ChatCompletion>;
  @useResult
  $Res call({String? message, String? messageId});
}

/// @nodoc
class _$ChatCompletionCopyWithImpl<$Res, $Val extends ChatCompletion>
    implements $ChatCompletionCopyWith<$Res> {
  _$ChatCompletionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? messageId = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      messageId: freezed == messageId
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChatCompletionImplCopyWith<$Res>
    implements $ChatCompletionCopyWith<$Res> {
  factory _$$ChatCompletionImplCopyWith(_$ChatCompletionImpl value,
          $Res Function(_$ChatCompletionImpl) then) =
      __$$ChatCompletionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message, String? messageId});
}

/// @nodoc
class __$$ChatCompletionImplCopyWithImpl<$Res>
    extends _$ChatCompletionCopyWithImpl<$Res, _$ChatCompletionImpl>
    implements _$$ChatCompletionImplCopyWith<$Res> {
  __$$ChatCompletionImplCopyWithImpl(
      _$ChatCompletionImpl _value, $Res Function(_$ChatCompletionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? messageId = freezed,
  }) {
    return _then(_$ChatCompletionImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      messageId: freezed == messageId
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatCompletionImpl
    with DiagnosticableTreeMixin
    implements _ChatCompletion {
  const _$ChatCompletionImpl({this.message, this.messageId});

  factory _$ChatCompletionImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatCompletionImplFromJson(json);

  @override
  final String? message;
  @override
  final String? messageId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatCompletion(message: $message, messageId: $messageId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ChatCompletion'))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('messageId', messageId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatCompletionImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.messageId, messageId) ||
                other.messageId == messageId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, messageId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatCompletionImplCopyWith<_$ChatCompletionImpl> get copyWith =>
      __$$ChatCompletionImplCopyWithImpl<_$ChatCompletionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatCompletionImplToJson(
      this,
    );
  }
}

abstract class _ChatCompletion implements ChatCompletion {
  const factory _ChatCompletion(
      {final String? message, final String? messageId}) = _$ChatCompletionImpl;

  factory _ChatCompletion.fromJson(Map<String, dynamic> json) =
      _$ChatCompletionImpl.fromJson;

  @override
  String? get message;
  @override
  String? get messageId;
  @override
  @JsonKey(ignore: true)
  _$$ChatCompletionImplCopyWith<_$ChatCompletionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ChatCompletionResponse _$ChatCompletionResponseFromJson(
    Map<String, dynamic> json) {
  return _ChatCompletionResponse.fromJson(json);
}

/// @nodoc
mixin _$ChatCompletionResponse {
  String? get id => throw _privateConstructorUsedError;
  String? get object => throw _privateConstructorUsedError;
  int? get created => throw _privateConstructorUsedError;
  String? get model => throw _privateConstructorUsedError;
  List<Choices>? get choices => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatCompletionResponseCopyWith<ChatCompletionResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatCompletionResponseCopyWith<$Res> {
  factory $ChatCompletionResponseCopyWith(ChatCompletionResponse value,
          $Res Function(ChatCompletionResponse) then) =
      _$ChatCompletionResponseCopyWithImpl<$Res, ChatCompletionResponse>;
  @useResult
  $Res call(
      {String? id,
      String? object,
      int? created,
      String? model,
      List<Choices>? choices});
}

/// @nodoc
class _$ChatCompletionResponseCopyWithImpl<$Res,
        $Val extends ChatCompletionResponse>
    implements $ChatCompletionResponseCopyWith<$Res> {
  _$ChatCompletionResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? object = freezed,
    Object? created = freezed,
    Object? model = freezed,
    Object? choices = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      object: freezed == object
          ? _value.object
          : object // ignore: cast_nullable_to_non_nullable
              as String?,
      created: freezed == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as int?,
      model: freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String?,
      choices: freezed == choices
          ? _value.choices
          : choices // ignore: cast_nullable_to_non_nullable
              as List<Choices>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChatCompletionResponseImplCopyWith<$Res>
    implements $ChatCompletionResponseCopyWith<$Res> {
  factory _$$ChatCompletionResponseImplCopyWith(
          _$ChatCompletionResponseImpl value,
          $Res Function(_$ChatCompletionResponseImpl) then) =
      __$$ChatCompletionResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? object,
      int? created,
      String? model,
      List<Choices>? choices});
}

/// @nodoc
class __$$ChatCompletionResponseImplCopyWithImpl<$Res>
    extends _$ChatCompletionResponseCopyWithImpl<$Res,
        _$ChatCompletionResponseImpl>
    implements _$$ChatCompletionResponseImplCopyWith<$Res> {
  __$$ChatCompletionResponseImplCopyWithImpl(
      _$ChatCompletionResponseImpl _value,
      $Res Function(_$ChatCompletionResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? object = freezed,
    Object? created = freezed,
    Object? model = freezed,
    Object? choices = freezed,
  }) {
    return _then(_$ChatCompletionResponseImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      object: freezed == object
          ? _value.object
          : object // ignore: cast_nullable_to_non_nullable
              as String?,
      created: freezed == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as int?,
      model: freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String?,
      choices: freezed == choices
          ? _value._choices
          : choices // ignore: cast_nullable_to_non_nullable
              as List<Choices>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatCompletionResponseImpl
    with DiagnosticableTreeMixin
    implements _ChatCompletionResponse {
  const _$ChatCompletionResponseImpl(
      {this.id,
      this.object,
      this.created,
      this.model,
      final List<Choices>? choices})
      : _choices = choices;

  factory _$ChatCompletionResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatCompletionResponseImplFromJson(json);

  @override
  final String? id;
  @override
  final String? object;
  @override
  final int? created;
  @override
  final String? model;
  final List<Choices>? _choices;
  @override
  List<Choices>? get choices {
    final value = _choices;
    if (value == null) return null;
    if (_choices is EqualUnmodifiableListView) return _choices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatCompletionResponse(id: $id, object: $object, created: $created, model: $model, choices: $choices)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ChatCompletionResponse'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('object', object))
      ..add(DiagnosticsProperty('created', created))
      ..add(DiagnosticsProperty('model', model))
      ..add(DiagnosticsProperty('choices', choices));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatCompletionResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.object, object) || other.object == object) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.model, model) || other.model == model) &&
            const DeepCollectionEquality().equals(other._choices, _choices));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, object, created, model,
      const DeepCollectionEquality().hash(_choices));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatCompletionResponseImplCopyWith<_$ChatCompletionResponseImpl>
      get copyWith => __$$ChatCompletionResponseImplCopyWithImpl<
          _$ChatCompletionResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatCompletionResponseImplToJson(
      this,
    );
  }
}

abstract class _ChatCompletionResponse implements ChatCompletionResponse {
  const factory _ChatCompletionResponse(
      {final String? id,
      final String? object,
      final int? created,
      final String? model,
      final List<Choices>? choices}) = _$ChatCompletionResponseImpl;

  factory _ChatCompletionResponse.fromJson(Map<String, dynamic> json) =
      _$ChatCompletionResponseImpl.fromJson;

  @override
  String? get id;
  @override
  String? get object;
  @override
  int? get created;
  @override
  String? get model;
  @override
  List<Choices>? get choices;
  @override
  @JsonKey(ignore: true)
  _$$ChatCompletionResponseImplCopyWith<_$ChatCompletionResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Choices _$ChoicesFromJson(Map<String, dynamic> json) {
  return _Choices.fromJson(json);
}

/// @nodoc
mixin _$Choices {
  int? get index => throw _privateConstructorUsedError;
  Message? get message => throw _privateConstructorUsedError;
  String? get finishReason => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChoicesCopyWith<Choices> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChoicesCopyWith<$Res> {
  factory $ChoicesCopyWith(Choices value, $Res Function(Choices) then) =
      _$ChoicesCopyWithImpl<$Res, Choices>;
  @useResult
  $Res call({int? index, Message? message, String? finishReason});

  $MessageCopyWith<$Res>? get message;
}

/// @nodoc
class _$ChoicesCopyWithImpl<$Res, $Val extends Choices>
    implements $ChoicesCopyWith<$Res> {
  _$ChoicesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = freezed,
    Object? message = freezed,
    Object? finishReason = freezed,
  }) {
    return _then(_value.copyWith(
      index: freezed == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as Message?,
      finishReason: freezed == finishReason
          ? _value.finishReason
          : finishReason // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MessageCopyWith<$Res>? get message {
    if (_value.message == null) {
      return null;
    }

    return $MessageCopyWith<$Res>(_value.message!, (value) {
      return _then(_value.copyWith(message: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChoicesImplCopyWith<$Res> implements $ChoicesCopyWith<$Res> {
  factory _$$ChoicesImplCopyWith(
          _$ChoicesImpl value, $Res Function(_$ChoicesImpl) then) =
      __$$ChoicesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? index, Message? message, String? finishReason});

  @override
  $MessageCopyWith<$Res>? get message;
}

/// @nodoc
class __$$ChoicesImplCopyWithImpl<$Res>
    extends _$ChoicesCopyWithImpl<$Res, _$ChoicesImpl>
    implements _$$ChoicesImplCopyWith<$Res> {
  __$$ChoicesImplCopyWithImpl(
      _$ChoicesImpl _value, $Res Function(_$ChoicesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = freezed,
    Object? message = freezed,
    Object? finishReason = freezed,
  }) {
    return _then(_$ChoicesImpl(
      index: freezed == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as Message?,
      finishReason: freezed == finishReason
          ? _value.finishReason
          : finishReason // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChoicesImpl with DiagnosticableTreeMixin implements _Choices {
  const _$ChoicesImpl({this.index, this.message, this.finishReason});

  factory _$ChoicesImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChoicesImplFromJson(json);

  @override
  final int? index;
  @override
  final Message? message;
  @override
  final String? finishReason;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Choices(index: $index, message: $message, finishReason: $finishReason)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Choices'))
      ..add(DiagnosticsProperty('index', index))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('finishReason', finishReason));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChoicesImpl &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.finishReason, finishReason) ||
                other.finishReason == finishReason));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, index, message, finishReason);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChoicesImplCopyWith<_$ChoicesImpl> get copyWith =>
      __$$ChoicesImplCopyWithImpl<_$ChoicesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChoicesImplToJson(
      this,
    );
  }
}

abstract class _Choices implements Choices {
  const factory _Choices(
      {final int? index,
      final Message? message,
      final String? finishReason}) = _$ChoicesImpl;

  factory _Choices.fromJson(Map<String, dynamic> json) = _$ChoicesImpl.fromJson;

  @override
  int? get index;
  @override
  Message? get message;
  @override
  String? get finishReason;
  @override
  @JsonKey(ignore: true)
  _$$ChoicesImplCopyWith<_$ChoicesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Message _$MessageFromJson(Map<String, dynamic> json) {
  return _Message.fromJson(json);
}

/// @nodoc
mixin _$Message {
  String? get role => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageCopyWith<Message> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageCopyWith<$Res> {
  factory $MessageCopyWith(Message value, $Res Function(Message) then) =
      _$MessageCopyWithImpl<$Res, Message>;
  @useResult
  $Res call({String? role, String? content});
}

/// @nodoc
class _$MessageCopyWithImpl<$Res, $Val extends Message>
    implements $MessageCopyWith<$Res> {
  _$MessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? role = freezed,
    Object? content = freezed,
  }) {
    return _then(_value.copyWith(
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MessageImplCopyWith<$Res> implements $MessageCopyWith<$Res> {
  factory _$$MessageImplCopyWith(
          _$MessageImpl value, $Res Function(_$MessageImpl) then) =
      __$$MessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? role, String? content});
}

/// @nodoc
class __$$MessageImplCopyWithImpl<$Res>
    extends _$MessageCopyWithImpl<$Res, _$MessageImpl>
    implements _$$MessageImplCopyWith<$Res> {
  __$$MessageImplCopyWithImpl(
      _$MessageImpl _value, $Res Function(_$MessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? role = freezed,
    Object? content = freezed,
  }) {
    return _then(_$MessageImpl(
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MessageImpl with DiagnosticableTreeMixin implements _Message {
  const _$MessageImpl({this.role, this.content});

  factory _$MessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessageImplFromJson(json);

  @override
  final String? role;
  @override
  final String? content;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Message(role: $role, content: $content)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Message'))
      ..add(DiagnosticsProperty('role', role))
      ..add(DiagnosticsProperty('content', content));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageImpl &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, role, content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageImplCopyWith<_$MessageImpl> get copyWith =>
      __$$MessageImplCopyWithImpl<_$MessageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageImplToJson(
      this,
    );
  }
}

abstract class _Message implements Message {
  const factory _Message({final String? role, final String? content}) =
      _$MessageImpl;

  factory _Message.fromJson(Map<String, dynamic> json) = _$MessageImpl.fromJson;

  @override
  String? get role;
  @override
  String? get content;
  @override
  @JsonKey(ignore: true)
  _$$MessageImplCopyWith<_$MessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
