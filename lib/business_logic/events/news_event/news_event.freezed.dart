// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'news_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NewsEventTearOff {
  const _$NewsEventTearOff();

  NewsLoadingEvent newsLoading() {
    return NewsLoadingEvent();
  }
}

/// @nodoc
const $NewsEvent = _$NewsEventTearOff();

/// @nodoc
mixin _$NewsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() newsLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? newsLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? newsLoading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NewsLoadingEvent value) newsLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NewsLoadingEvent value)? newsLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewsLoadingEvent value)? newsLoading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsEventCopyWith<$Res> {
  factory $NewsEventCopyWith(NewsEvent value, $Res Function(NewsEvent) then) =
      _$NewsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$NewsEventCopyWithImpl<$Res> implements $NewsEventCopyWith<$Res> {
  _$NewsEventCopyWithImpl(this._value, this._then);

  final NewsEvent _value;
  // ignore: unused_field
  final $Res Function(NewsEvent) _then;
}

/// @nodoc
abstract class $NewsLoadingEventCopyWith<$Res> {
  factory $NewsLoadingEventCopyWith(
          NewsLoadingEvent value, $Res Function(NewsLoadingEvent) then) =
      _$NewsLoadingEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$NewsLoadingEventCopyWithImpl<$Res> extends _$NewsEventCopyWithImpl<$Res>
    implements $NewsLoadingEventCopyWith<$Res> {
  _$NewsLoadingEventCopyWithImpl(
      NewsLoadingEvent _value, $Res Function(NewsLoadingEvent) _then)
      : super(_value, (v) => _then(v as NewsLoadingEvent));

  @override
  NewsLoadingEvent get _value => super._value as NewsLoadingEvent;
}

/// @nodoc

class _$NewsLoadingEvent implements NewsLoadingEvent {
  _$NewsLoadingEvent();

  @override
  String toString() {
    return 'NewsEvent.newsLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is NewsLoadingEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() newsLoading,
  }) {
    return newsLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? newsLoading,
  }) {
    return newsLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? newsLoading,
    required TResult orElse(),
  }) {
    if (newsLoading != null) {
      return newsLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NewsLoadingEvent value) newsLoading,
  }) {
    return newsLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NewsLoadingEvent value)? newsLoading,
  }) {
    return newsLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewsLoadingEvent value)? newsLoading,
    required TResult orElse(),
  }) {
    if (newsLoading != null) {
      return newsLoading(this);
    }
    return orElse();
  }
}

abstract class NewsLoadingEvent implements NewsEvent {
  factory NewsLoadingEvent() = _$NewsLoadingEvent;
}
