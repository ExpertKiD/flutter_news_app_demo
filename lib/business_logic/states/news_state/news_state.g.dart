// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NewsInitial _$$NewsInitialFromJson(Map<String, dynamic> json) =>
    _$NewsInitial(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$NewsInitialToJson(_$NewsInitial instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$NewsLoading _$$NewsLoadingFromJson(Map<String, dynamic> json) =>
    _$NewsLoading(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$NewsLoadingToJson(_$NewsLoading instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$NewsLoadSuccess _$$NewsLoadSuccessFromJson(Map<String, dynamic> json) =>
    _$NewsLoadSuccess(
      news: News.fromJson(json['news'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$NewsLoadSuccessToJson(_$NewsLoadSuccess instance) =>
    <String, dynamic>{
      'news': instance.news,
      'runtimeType': instance.$type,
    };

_$NewsLoadFailure _$$NewsLoadFailureFromJson(Map<String, dynamic> json) =>
    _$NewsLoadFailure(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$NewsLoadFailureToJson(_$NewsLoadFailure instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };
