// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stocks_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StocksState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Stock> stocks, bool hasReachedMax, int page,
            int totalCount, String? search, String? country, bool? compliance)
        loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Stock> stocks, bool hasReachedMax, int page,
            int totalCount, String? search, String? country, bool? compliance)?
        loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Stock> stocks, bool hasReachedMax, int page,
            int totalCount, String? search, String? country, bool? compliance)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StocksInitial value) initial,
    required TResult Function(StocksLoading value) loading,
    required TResult Function(StocksLoaded value) loaded,
    required TResult Function(StocksError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StocksInitial value)? initial,
    TResult? Function(StocksLoading value)? loading,
    TResult? Function(StocksLoaded value)? loaded,
    TResult? Function(StocksError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StocksInitial value)? initial,
    TResult Function(StocksLoading value)? loading,
    TResult Function(StocksLoaded value)? loaded,
    TResult Function(StocksError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StocksStateCopyWith<$Res> {
  factory $StocksStateCopyWith(
          StocksState value, $Res Function(StocksState) then) =
      _$StocksStateCopyWithImpl<$Res, StocksState>;
}

/// @nodoc
class _$StocksStateCopyWithImpl<$Res, $Val extends StocksState>
    implements $StocksStateCopyWith<$Res> {
  _$StocksStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StocksState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StocksInitialImplCopyWith<$Res> {
  factory _$$StocksInitialImplCopyWith(
          _$StocksInitialImpl value, $Res Function(_$StocksInitialImpl) then) =
      __$$StocksInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StocksInitialImplCopyWithImpl<$Res>
    extends _$StocksStateCopyWithImpl<$Res, _$StocksInitialImpl>
    implements _$$StocksInitialImplCopyWith<$Res> {
  __$$StocksInitialImplCopyWithImpl(
      _$StocksInitialImpl _value, $Res Function(_$StocksInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of StocksState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StocksInitialImpl implements StocksInitial {
  const _$StocksInitialImpl();

  @override
  String toString() {
    return 'StocksState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StocksInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Stock> stocks, bool hasReachedMax, int page,
            int totalCount, String? search, String? country, bool? compliance)
        loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Stock> stocks, bool hasReachedMax, int page,
            int totalCount, String? search, String? country, bool? compliance)?
        loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Stock> stocks, bool hasReachedMax, int page,
            int totalCount, String? search, String? country, bool? compliance)?
        loaded,
    TResult Function(String message)? error,
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
    required TResult Function(StocksInitial value) initial,
    required TResult Function(StocksLoading value) loading,
    required TResult Function(StocksLoaded value) loaded,
    required TResult Function(StocksError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StocksInitial value)? initial,
    TResult? Function(StocksLoading value)? loading,
    TResult? Function(StocksLoaded value)? loaded,
    TResult? Function(StocksError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StocksInitial value)? initial,
    TResult Function(StocksLoading value)? loading,
    TResult Function(StocksLoaded value)? loaded,
    TResult Function(StocksError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class StocksInitial implements StocksState {
  const factory StocksInitial() = _$StocksInitialImpl;
}

/// @nodoc
abstract class _$$StocksLoadingImplCopyWith<$Res> {
  factory _$$StocksLoadingImplCopyWith(
          _$StocksLoadingImpl value, $Res Function(_$StocksLoadingImpl) then) =
      __$$StocksLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StocksLoadingImplCopyWithImpl<$Res>
    extends _$StocksStateCopyWithImpl<$Res, _$StocksLoadingImpl>
    implements _$$StocksLoadingImplCopyWith<$Res> {
  __$$StocksLoadingImplCopyWithImpl(
      _$StocksLoadingImpl _value, $Res Function(_$StocksLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of StocksState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StocksLoadingImpl implements StocksLoading {
  const _$StocksLoadingImpl();

  @override
  String toString() {
    return 'StocksState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StocksLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Stock> stocks, bool hasReachedMax, int page,
            int totalCount, String? search, String? country, bool? compliance)
        loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Stock> stocks, bool hasReachedMax, int page,
            int totalCount, String? search, String? country, bool? compliance)?
        loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Stock> stocks, bool hasReachedMax, int page,
            int totalCount, String? search, String? country, bool? compliance)?
        loaded,
    TResult Function(String message)? error,
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
    required TResult Function(StocksInitial value) initial,
    required TResult Function(StocksLoading value) loading,
    required TResult Function(StocksLoaded value) loaded,
    required TResult Function(StocksError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StocksInitial value)? initial,
    TResult? Function(StocksLoading value)? loading,
    TResult? Function(StocksLoaded value)? loaded,
    TResult? Function(StocksError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StocksInitial value)? initial,
    TResult Function(StocksLoading value)? loading,
    TResult Function(StocksLoaded value)? loaded,
    TResult Function(StocksError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class StocksLoading implements StocksState {
  const factory StocksLoading() = _$StocksLoadingImpl;
}

/// @nodoc
abstract class _$$StocksLoadedImplCopyWith<$Res> {
  factory _$$StocksLoadedImplCopyWith(
          _$StocksLoadedImpl value, $Res Function(_$StocksLoadedImpl) then) =
      __$$StocksLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<Stock> stocks,
      bool hasReachedMax,
      int page,
      int totalCount,
      String? search,
      String? country,
      bool? compliance});
}

/// @nodoc
class __$$StocksLoadedImplCopyWithImpl<$Res>
    extends _$StocksStateCopyWithImpl<$Res, _$StocksLoadedImpl>
    implements _$$StocksLoadedImplCopyWith<$Res> {
  __$$StocksLoadedImplCopyWithImpl(
      _$StocksLoadedImpl _value, $Res Function(_$StocksLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of StocksState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stocks = null,
    Object? hasReachedMax = null,
    Object? page = null,
    Object? totalCount = null,
    Object? search = freezed,
    Object? country = freezed,
    Object? compliance = freezed,
  }) {
    return _then(_$StocksLoadedImpl(
      stocks: null == stocks
          ? _value._stocks
          : stocks // ignore: cast_nullable_to_non_nullable
              as List<Stock>,
      hasReachedMax: null == hasReachedMax
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      search: freezed == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      compliance: freezed == compliance
          ? _value.compliance
          : compliance // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$StocksLoadedImpl implements StocksLoaded {
  const _$StocksLoadedImpl(
      {final List<Stock> stocks = const [],
      this.hasReachedMax = false,
      this.page = 1,
      this.totalCount = 0,
      this.search,
      this.country,
      this.compliance})
      : _stocks = stocks;

  final List<Stock> _stocks;
  @override
  @JsonKey()
  List<Stock> get stocks {
    if (_stocks is EqualUnmodifiableListView) return _stocks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stocks);
  }

  @override
  @JsonKey()
  final bool hasReachedMax;
  @override
  @JsonKey()
  final int page;
  @override
  @JsonKey()
  final int totalCount;
  @override
  final String? search;
  @override
  final String? country;
  @override
  final bool? compliance;

  @override
  String toString() {
    return 'StocksState.loaded(stocks: $stocks, hasReachedMax: $hasReachedMax, page: $page, totalCount: $totalCount, search: $search, country: $country, compliance: $compliance)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StocksLoadedImpl &&
            const DeepCollectionEquality().equals(other._stocks, _stocks) &&
            (identical(other.hasReachedMax, hasReachedMax) ||
                other.hasReachedMax == hasReachedMax) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount) &&
            (identical(other.search, search) || other.search == search) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.compliance, compliance) ||
                other.compliance == compliance));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_stocks),
      hasReachedMax,
      page,
      totalCount,
      search,
      country,
      compliance);

  /// Create a copy of StocksState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StocksLoadedImplCopyWith<_$StocksLoadedImpl> get copyWith =>
      __$$StocksLoadedImplCopyWithImpl<_$StocksLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Stock> stocks, bool hasReachedMax, int page,
            int totalCount, String? search, String? country, bool? compliance)
        loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(
        stocks, hasReachedMax, page, totalCount, search, country, compliance);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Stock> stocks, bool hasReachedMax, int page,
            int totalCount, String? search, String? country, bool? compliance)?
        loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(
        stocks, hasReachedMax, page, totalCount, search, country, compliance);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Stock> stocks, bool hasReachedMax, int page,
            int totalCount, String? search, String? country, bool? compliance)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(
          stocks, hasReachedMax, page, totalCount, search, country, compliance);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StocksInitial value) initial,
    required TResult Function(StocksLoading value) loading,
    required TResult Function(StocksLoaded value) loaded,
    required TResult Function(StocksError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StocksInitial value)? initial,
    TResult? Function(StocksLoading value)? loading,
    TResult? Function(StocksLoaded value)? loaded,
    TResult? Function(StocksError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StocksInitial value)? initial,
    TResult Function(StocksLoading value)? loading,
    TResult Function(StocksLoaded value)? loaded,
    TResult Function(StocksError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class StocksLoaded implements StocksState {
  const factory StocksLoaded(
      {final List<Stock> stocks,
      final bool hasReachedMax,
      final int page,
      final int totalCount,
      final String? search,
      final String? country,
      final bool? compliance}) = _$StocksLoadedImpl;

  List<Stock> get stocks;
  bool get hasReachedMax;
  int get page;
  int get totalCount;
  String? get search;
  String? get country;
  bool? get compliance;

  /// Create a copy of StocksState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StocksLoadedImplCopyWith<_$StocksLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StocksErrorImplCopyWith<$Res> {
  factory _$$StocksErrorImplCopyWith(
          _$StocksErrorImpl value, $Res Function(_$StocksErrorImpl) then) =
      __$$StocksErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$StocksErrorImplCopyWithImpl<$Res>
    extends _$StocksStateCopyWithImpl<$Res, _$StocksErrorImpl>
    implements _$$StocksErrorImplCopyWith<$Res> {
  __$$StocksErrorImplCopyWithImpl(
      _$StocksErrorImpl _value, $Res Function(_$StocksErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of StocksState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$StocksErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StocksErrorImpl implements StocksError {
  const _$StocksErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'StocksState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StocksErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of StocksState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StocksErrorImplCopyWith<_$StocksErrorImpl> get copyWith =>
      __$$StocksErrorImplCopyWithImpl<_$StocksErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Stock> stocks, bool hasReachedMax, int page,
            int totalCount, String? search, String? country, bool? compliance)
        loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Stock> stocks, bool hasReachedMax, int page,
            int totalCount, String? search, String? country, bool? compliance)?
        loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Stock> stocks, bool hasReachedMax, int page,
            int totalCount, String? search, String? country, bool? compliance)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StocksInitial value) initial,
    required TResult Function(StocksLoading value) loading,
    required TResult Function(StocksLoaded value) loaded,
    required TResult Function(StocksError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StocksInitial value)? initial,
    TResult? Function(StocksLoading value)? loading,
    TResult? Function(StocksLoaded value)? loaded,
    TResult? Function(StocksError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StocksInitial value)? initial,
    TResult Function(StocksLoading value)? loading,
    TResult Function(StocksLoaded value)? loaded,
    TResult Function(StocksError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class StocksError implements StocksState {
  const factory StocksError(final String message) = _$StocksErrorImpl;

  String get message;

  /// Create a copy of StocksState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StocksErrorImplCopyWith<_$StocksErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
