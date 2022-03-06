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

  NewsLoadStarted newsLoadStarted({NewsCategory? category}) {
    return NewsLoadStarted(
      category: category,
    );
  }
}

/// @nodoc
const $NewsEvent = _$NewsEventTearOff();

/// @nodoc
mixin _$NewsEvent {
  NewsCategory? get category => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NewsCategory? category) newsLoadStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(NewsCategory? category)? newsLoadStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NewsCategory? category)? newsLoadStarted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NewsLoadStarted value) newsLoadStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NewsLoadStarted value)? newsLoadStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewsLoadStarted value)? newsLoadStarted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NewsEventCopyWith<NewsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsEventCopyWith<$Res> {
  factory $NewsEventCopyWith(NewsEvent value, $Res Function(NewsEvent) then) =
      _$NewsEventCopyWithImpl<$Res>;
  $Res call({NewsCategory? category});
}

/// @nodoc
class _$NewsEventCopyWithImpl<$Res> implements $NewsEventCopyWith<$Res> {
  _$NewsEventCopyWithImpl(this._value, this._then);

  final NewsEvent _value;
  // ignore: unused_field
  final $Res Function(NewsEvent) _then;

  @override
  $Res call({
    Object? category = freezed,
  }) {
    return _then(_value.copyWith(
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as NewsCategory?,
    ));
  }
}

/// @nodoc
abstract class $NewsLoadStartedCopyWith<$Res>
    implements $NewsEventCopyWith<$Res> {
  factory $NewsLoadStartedCopyWith(
          NewsLoadStarted value, $Res Function(NewsLoadStarted) then) =
      _$NewsLoadStartedCopyWithImpl<$Res>;
  @override
  $Res call({NewsCategory? category});
}

/// @nodoc
class _$NewsLoadStartedCopyWithImpl<$Res> extends _$NewsEventCopyWithImpl<$Res>
    implements $NewsLoadStartedCopyWith<$Res> {
  _$NewsLoadStartedCopyWithImpl(
      NewsLoadStarted _value, $Res Function(NewsLoadStarted) _then)
      : super(_value, (v) => _then(v as NewsLoadStarted));

  @override
  NewsLoadStarted get _value => super._value as NewsLoadStarted;

  @override
  $Res call({
    Object? category = freezed,
  }) {
    return _then(NewsLoadStarted(
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as NewsCategory?,
    ));
  }
}

/// @nodoc

class _$NewsLoadStarted implements NewsLoadStarted {
  _$NewsLoadStarted({this.category});

  @override
  final NewsCategory? category;

  @override
  String toString() {
    return 'NewsEvent.newsLoadStarted(category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NewsLoadStarted &&
            const DeepCollectionEquality().equals(other.category, category));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(category));

  @JsonKey(ignore: true)
  @override
  $NewsLoadStartedCopyWith<NewsLoadStarted> get copyWith =>
      _$NewsLoadStartedCopyWithImpl<NewsLoadStarted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NewsCategory? category) newsLoadStarted,
  }) {
    return newsLoadStarted(category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(NewsCategory? category)? newsLoadStarted,
  }) {
    return newsLoadStarted?.call(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NewsCategory? category)? newsLoadStarted,
    required TResult orElse(),
  }) {
    if (newsLoadStarted != null) {
      return newsLoadStarted(category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NewsLoadStarted value) newsLoadStarted,
  }) {
    return newsLoadStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NewsLoadStarted value)? newsLoadStarted,
  }) {
    return newsLoadStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewsLoadStarted value)? newsLoadStarted,
    required TResult orElse(),
  }) {
    if (newsLoadStarted != null) {
      return newsLoadStarted(this);
    }
    return orElse();
  }
}

abstract class NewsLoadStarted implements NewsEvent {
  factory NewsLoadStarted({NewsCategory? category}) = _$NewsLoadStarted;

  @override
  NewsCategory? get category;
  @override
  @JsonKey(ignore: true)
  $NewsLoadStartedCopyWith<NewsLoadStarted> get copyWith =>
      throw _privateConstructorUsedError;
}
