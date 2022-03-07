// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'news_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NewsState _$NewsStateFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'initial':
      return NewsInitial.fromJson(json);
    case 'loading':
      return NewsLoading.fromJson(json);
    case 'loadSuccess':
      return NewsLoadSuccess.fromJson(json);
    case 'loadFailure':
      return NewsLoadFailure.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'NewsState',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
class _$NewsStateTearOff {
  const _$NewsStateTearOff();

  NewsInitial initial() {
    return NewsInitial();
  }

  NewsLoading loading() {
    return NewsLoading();
  }

  NewsLoadSuccess loadSuccess({required News news}) {
    return NewsLoadSuccess(
      news: news,
    );
  }

  NewsLoadFailure loadFailure() {
    return NewsLoadFailure();
  }

  NewsState fromJson(Map<String, Object?> json) {
    return NewsState.fromJson(json);
  }
}

/// @nodoc
const $NewsState = _$NewsStateTearOff();

/// @nodoc
mixin _$NewsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(News news) loadSuccess,
    required TResult Function() loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(News news)? loadSuccess,
    TResult Function()? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(News news)? loadSuccess,
    TResult Function()? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NewsInitial value) initial,
    required TResult Function(NewsLoading value) loading,
    required TResult Function(NewsLoadSuccess value) loadSuccess,
    required TResult Function(NewsLoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NewsInitial value)? initial,
    TResult Function(NewsLoading value)? loading,
    TResult Function(NewsLoadSuccess value)? loadSuccess,
    TResult Function(NewsLoadFailure value)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewsInitial value)? initial,
    TResult Function(NewsLoading value)? loading,
    TResult Function(NewsLoadSuccess value)? loadSuccess,
    TResult Function(NewsLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsStateCopyWith<$Res> {
  factory $NewsStateCopyWith(NewsState value, $Res Function(NewsState) then) =
      _$NewsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$NewsStateCopyWithImpl<$Res> implements $NewsStateCopyWith<$Res> {
  _$NewsStateCopyWithImpl(this._value, this._then);

  final NewsState _value;
  // ignore: unused_field
  final $Res Function(NewsState) _then;
}

/// @nodoc
abstract class $NewsInitialCopyWith<$Res> {
  factory $NewsInitialCopyWith(
          NewsInitial value, $Res Function(NewsInitial) then) =
      _$NewsInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$NewsInitialCopyWithImpl<$Res> extends _$NewsStateCopyWithImpl<$Res>
    implements $NewsInitialCopyWith<$Res> {
  _$NewsInitialCopyWithImpl(
      NewsInitial _value, $Res Function(NewsInitial) _then)
      : super(_value, (v) => _then(v as NewsInitial));

  @override
  NewsInitial get _value => super._value as NewsInitial;
}

/// @nodoc
@JsonSerializable()
class _$NewsInitial implements NewsInitial {
  _$NewsInitial({String? $type}) : $type = $type ?? 'initial';

  factory _$NewsInitial.fromJson(Map<String, dynamic> json) =>
      _$$NewsInitialFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'NewsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is NewsInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(News news) loadSuccess,
    required TResult Function() loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(News news)? loadSuccess,
    TResult Function()? loadFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(News news)? loadSuccess,
    TResult Function()? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NewsInitial value) initial,
    required TResult Function(NewsLoading value) loading,
    required TResult Function(NewsLoadSuccess value) loadSuccess,
    required TResult Function(NewsLoadFailure value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NewsInitial value)? initial,
    TResult Function(NewsLoading value)? loading,
    TResult Function(NewsLoadSuccess value)? loadSuccess,
    TResult Function(NewsLoadFailure value)? loadFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewsInitial value)? initial,
    TResult Function(NewsLoading value)? loading,
    TResult Function(NewsLoadSuccess value)? loadSuccess,
    TResult Function(NewsLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$NewsInitialToJson(this);
  }
}

abstract class NewsInitial implements NewsState {
  factory NewsInitial() = _$NewsInitial;

  factory NewsInitial.fromJson(Map<String, dynamic> json) =
      _$NewsInitial.fromJson;
}

/// @nodoc
abstract class $NewsLoadingCopyWith<$Res> {
  factory $NewsLoadingCopyWith(
          NewsLoading value, $Res Function(NewsLoading) then) =
      _$NewsLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$NewsLoadingCopyWithImpl<$Res> extends _$NewsStateCopyWithImpl<$Res>
    implements $NewsLoadingCopyWith<$Res> {
  _$NewsLoadingCopyWithImpl(
      NewsLoading _value, $Res Function(NewsLoading) _then)
      : super(_value, (v) => _then(v as NewsLoading));

  @override
  NewsLoading get _value => super._value as NewsLoading;
}

/// @nodoc
@JsonSerializable()
class _$NewsLoading implements NewsLoading {
  _$NewsLoading({String? $type}) : $type = $type ?? 'loading';

  factory _$NewsLoading.fromJson(Map<String, dynamic> json) =>
      _$$NewsLoadingFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'NewsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is NewsLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(News news) loadSuccess,
    required TResult Function() loadFailure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(News news)? loadSuccess,
    TResult Function()? loadFailure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(News news)? loadSuccess,
    TResult Function()? loadFailure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NewsInitial value) initial,
    required TResult Function(NewsLoading value) loading,
    required TResult Function(NewsLoadSuccess value) loadSuccess,
    required TResult Function(NewsLoadFailure value) loadFailure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NewsInitial value)? initial,
    TResult Function(NewsLoading value)? loading,
    TResult Function(NewsLoadSuccess value)? loadSuccess,
    TResult Function(NewsLoadFailure value)? loadFailure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewsInitial value)? initial,
    TResult Function(NewsLoading value)? loading,
    TResult Function(NewsLoadSuccess value)? loadSuccess,
    TResult Function(NewsLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$NewsLoadingToJson(this);
  }
}

abstract class NewsLoading implements NewsState {
  factory NewsLoading() = _$NewsLoading;

  factory NewsLoading.fromJson(Map<String, dynamic> json) =
      _$NewsLoading.fromJson;
}

/// @nodoc
abstract class $NewsLoadSuccessCopyWith<$Res> {
  factory $NewsLoadSuccessCopyWith(
          NewsLoadSuccess value, $Res Function(NewsLoadSuccess) then) =
      _$NewsLoadSuccessCopyWithImpl<$Res>;
  $Res call({News news});

  $NewsCopyWith<$Res> get news;
}

/// @nodoc
class _$NewsLoadSuccessCopyWithImpl<$Res> extends _$NewsStateCopyWithImpl<$Res>
    implements $NewsLoadSuccessCopyWith<$Res> {
  _$NewsLoadSuccessCopyWithImpl(
      NewsLoadSuccess _value, $Res Function(NewsLoadSuccess) _then)
      : super(_value, (v) => _then(v as NewsLoadSuccess));

  @override
  NewsLoadSuccess get _value => super._value as NewsLoadSuccess;

  @override
  $Res call({
    Object? news = freezed,
  }) {
    return _then(NewsLoadSuccess(
      news: news == freezed
          ? _value.news
          : news // ignore: cast_nullable_to_non_nullable
              as News,
    ));
  }

  @override
  $NewsCopyWith<$Res> get news {
    return $NewsCopyWith<$Res>(_value.news, (value) {
      return _then(_value.copyWith(news: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$NewsLoadSuccess implements NewsLoadSuccess {
  _$NewsLoadSuccess({required this.news, String? $type})
      : $type = $type ?? 'loadSuccess';

  factory _$NewsLoadSuccess.fromJson(Map<String, dynamic> json) =>
      _$$NewsLoadSuccessFromJson(json);

  @override
  final News news;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'NewsState.loadSuccess(news: $news)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NewsLoadSuccess &&
            const DeepCollectionEquality().equals(other.news, news));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(news));

  @JsonKey(ignore: true)
  @override
  $NewsLoadSuccessCopyWith<NewsLoadSuccess> get copyWith =>
      _$NewsLoadSuccessCopyWithImpl<NewsLoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(News news) loadSuccess,
    required TResult Function() loadFailure,
  }) {
    return loadSuccess(news);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(News news)? loadSuccess,
    TResult Function()? loadFailure,
  }) {
    return loadSuccess?.call(news);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(News news)? loadSuccess,
    TResult Function()? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(news);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NewsInitial value) initial,
    required TResult Function(NewsLoading value) loading,
    required TResult Function(NewsLoadSuccess value) loadSuccess,
    required TResult Function(NewsLoadFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NewsInitial value)? initial,
    TResult Function(NewsLoading value)? loading,
    TResult Function(NewsLoadSuccess value)? loadSuccess,
    TResult Function(NewsLoadFailure value)? loadFailure,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewsInitial value)? initial,
    TResult Function(NewsLoading value)? loading,
    TResult Function(NewsLoadSuccess value)? loadSuccess,
    TResult Function(NewsLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$NewsLoadSuccessToJson(this);
  }
}

abstract class NewsLoadSuccess implements NewsState {
  factory NewsLoadSuccess({required News news}) = _$NewsLoadSuccess;

  factory NewsLoadSuccess.fromJson(Map<String, dynamic> json) =
      _$NewsLoadSuccess.fromJson;

  News get news;
  @JsonKey(ignore: true)
  $NewsLoadSuccessCopyWith<NewsLoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsLoadFailureCopyWith<$Res> {
  factory $NewsLoadFailureCopyWith(
          NewsLoadFailure value, $Res Function(NewsLoadFailure) then) =
      _$NewsLoadFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$NewsLoadFailureCopyWithImpl<$Res> extends _$NewsStateCopyWithImpl<$Res>
    implements $NewsLoadFailureCopyWith<$Res> {
  _$NewsLoadFailureCopyWithImpl(
      NewsLoadFailure _value, $Res Function(NewsLoadFailure) _then)
      : super(_value, (v) => _then(v as NewsLoadFailure));

  @override
  NewsLoadFailure get _value => super._value as NewsLoadFailure;
}

/// @nodoc
@JsonSerializable()
class _$NewsLoadFailure implements NewsLoadFailure {
  _$NewsLoadFailure({String? $type}) : $type = $type ?? 'loadFailure';

  factory _$NewsLoadFailure.fromJson(Map<String, dynamic> json) =>
      _$$NewsLoadFailureFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'NewsState.loadFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is NewsLoadFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(News news) loadSuccess,
    required TResult Function() loadFailure,
  }) {
    return loadFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(News news)? loadSuccess,
    TResult Function()? loadFailure,
  }) {
    return loadFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(News news)? loadSuccess,
    TResult Function()? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NewsInitial value) initial,
    required TResult Function(NewsLoading value) loading,
    required TResult Function(NewsLoadSuccess value) loadSuccess,
    required TResult Function(NewsLoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NewsInitial value)? initial,
    TResult Function(NewsLoading value)? loading,
    TResult Function(NewsLoadSuccess value)? loadSuccess,
    TResult Function(NewsLoadFailure value)? loadFailure,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewsInitial value)? initial,
    TResult Function(NewsLoading value)? loading,
    TResult Function(NewsLoadSuccess value)? loadSuccess,
    TResult Function(NewsLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$NewsLoadFailureToJson(this);
  }
}

abstract class NewsLoadFailure implements NewsState {
  factory NewsLoadFailure() = _$NewsLoadFailure;

  factory NewsLoadFailure.fromJson(Map<String, dynamic> json) =
      _$NewsLoadFailure.fromJson;
}
