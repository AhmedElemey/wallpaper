// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchResponse _$SearchResponseFromJson(Map<String, dynamic> json) {
  return _SearchResponse.fromJson(json);
}

/// @nodoc
mixin _$SearchResponse {
  int get page => throw _privateConstructorUsedError;
  int get per_page => throw _privateConstructorUsedError;
  List<SearchPhotosEntity>? get photos => throw _privateConstructorUsedError;
  int get total_results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchResponseCopyWith<SearchResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchResponseCopyWith<$Res> {
  factory $SearchResponseCopyWith(
          SearchResponse value, $Res Function(SearchResponse) then) =
      _$SearchResponseCopyWithImpl<$Res, SearchResponse>;
  @useResult
  $Res call(
      {int page,
      int per_page,
      List<SearchPhotosEntity>? photos,
      int total_results});
}

/// @nodoc
class _$SearchResponseCopyWithImpl<$Res, $Val extends SearchResponse>
    implements $SearchResponseCopyWith<$Res> {
  _$SearchResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? per_page = null,
    Object? photos = freezed,
    Object? total_results = null,
  }) {
    return _then(_value.copyWith(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      per_page: null == per_page
          ? _value.per_page
          : per_page // ignore: cast_nullable_to_non_nullable
              as int,
      photos: freezed == photos
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<SearchPhotosEntity>?,
      total_results: null == total_results
          ? _value.total_results
          : total_results // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SearchResponseCopyWith<$Res>
    implements $SearchResponseCopyWith<$Res> {
  factory _$$_SearchResponseCopyWith(
          _$_SearchResponse value, $Res Function(_$_SearchResponse) then) =
      __$$_SearchResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int page,
      int per_page,
      List<SearchPhotosEntity>? photos,
      int total_results});
}

/// @nodoc
class __$$_SearchResponseCopyWithImpl<$Res>
    extends _$SearchResponseCopyWithImpl<$Res, _$_SearchResponse>
    implements _$$_SearchResponseCopyWith<$Res> {
  __$$_SearchResponseCopyWithImpl(
      _$_SearchResponse _value, $Res Function(_$_SearchResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? per_page = null,
    Object? photos = freezed,
    Object? total_results = null,
  }) {
    return _then(_$_SearchResponse(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      per_page: null == per_page
          ? _value.per_page
          : per_page // ignore: cast_nullable_to_non_nullable
              as int,
      photos: freezed == photos
          ? _value._photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<SearchPhotosEntity>?,
      total_results: null == total_results
          ? _value.total_results
          : total_results // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SearchResponse implements _SearchResponse {
  const _$_SearchResponse(
      {required this.page,
      required this.per_page,
      required final List<SearchPhotosEntity>? photos,
      required this.total_results})
      : _photos = photos;

  factory _$_SearchResponse.fromJson(Map<String, dynamic> json) =>
      _$$_SearchResponseFromJson(json);

  @override
  final int page;
  @override
  final int per_page;
  final List<SearchPhotosEntity>? _photos;
  @override
  List<SearchPhotosEntity>? get photos {
    final value = _photos;
    if (value == null) return null;
    if (_photos is EqualUnmodifiableListView) return _photos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int total_results;

  @override
  String toString() {
    return 'SearchResponse(page: $page, per_page: $per_page, photos: $photos, total_results: $total_results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchResponse &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.per_page, per_page) ||
                other.per_page == per_page) &&
            const DeepCollectionEquality().equals(other._photos, _photos) &&
            (identical(other.total_results, total_results) ||
                other.total_results == total_results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, page, per_page,
      const DeepCollectionEquality().hash(_photos), total_results);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchResponseCopyWith<_$_SearchResponse> get copyWith =>
      __$$_SearchResponseCopyWithImpl<_$_SearchResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SearchResponseToJson(
      this,
    );
  }
}

abstract class _SearchResponse implements SearchResponse {
  const factory _SearchResponse(
      {required final int page,
      required final int per_page,
      required final List<SearchPhotosEntity>? photos,
      required final int total_results}) = _$_SearchResponse;

  factory _SearchResponse.fromJson(Map<String, dynamic> json) =
      _$_SearchResponse.fromJson;

  @override
  int get page;
  @override
  int get per_page;
  @override
  List<SearchPhotosEntity>? get photos;
  @override
  int get total_results;
  @override
  @JsonKey(ignore: true)
  _$$_SearchResponseCopyWith<_$_SearchResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

SearchPhotosEntity _$SearchPhotosEntityFromJson(Map<String, dynamic> json) {
  return _SearchPhotosEntity.fromJson(json);
}

/// @nodoc
mixin _$SearchPhotosEntity {
  int get id => throw _privateConstructorUsedError;
  SearchPhoto get src => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchPhotosEntityCopyWith<SearchPhotosEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchPhotosEntityCopyWith<$Res> {
  factory $SearchPhotosEntityCopyWith(
          SearchPhotosEntity value, $Res Function(SearchPhotosEntity) then) =
      _$SearchPhotosEntityCopyWithImpl<$Res, SearchPhotosEntity>;
  @useResult
  $Res call({int id, SearchPhoto src});

  $SearchPhotoCopyWith<$Res> get src;
}

/// @nodoc
class _$SearchPhotosEntityCopyWithImpl<$Res, $Val extends SearchPhotosEntity>
    implements $SearchPhotosEntityCopyWith<$Res> {
  _$SearchPhotosEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? src = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      src: null == src
          ? _value.src
          : src // ignore: cast_nullable_to_non_nullable
              as SearchPhoto,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SearchPhotoCopyWith<$Res> get src {
    return $SearchPhotoCopyWith<$Res>(_value.src, (value) {
      return _then(_value.copyWith(src: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SearchPhotosEntityCopyWith<$Res>
    implements $SearchPhotosEntityCopyWith<$Res> {
  factory _$$_SearchPhotosEntityCopyWith(_$_SearchPhotosEntity value,
          $Res Function(_$_SearchPhotosEntity) then) =
      __$$_SearchPhotosEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, SearchPhoto src});

  @override
  $SearchPhotoCopyWith<$Res> get src;
}

/// @nodoc
class __$$_SearchPhotosEntityCopyWithImpl<$Res>
    extends _$SearchPhotosEntityCopyWithImpl<$Res, _$_SearchPhotosEntity>
    implements _$$_SearchPhotosEntityCopyWith<$Res> {
  __$$_SearchPhotosEntityCopyWithImpl(
      _$_SearchPhotosEntity _value, $Res Function(_$_SearchPhotosEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? src = null,
  }) {
    return _then(_$_SearchPhotosEntity(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      src: null == src
          ? _value.src
          : src // ignore: cast_nullable_to_non_nullable
              as SearchPhoto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SearchPhotosEntity implements _SearchPhotosEntity {
  const _$_SearchPhotosEntity({required this.id, required this.src});

  factory _$_SearchPhotosEntity.fromJson(Map<String, dynamic> json) =>
      _$$_SearchPhotosEntityFromJson(json);

  @override
  final int id;
  @override
  final SearchPhoto src;

  @override
  String toString() {
    return 'SearchPhotosEntity(id: $id, src: $src)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchPhotosEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.src, src) || other.src == src));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, src);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchPhotosEntityCopyWith<_$_SearchPhotosEntity> get copyWith =>
      __$$_SearchPhotosEntityCopyWithImpl<_$_SearchPhotosEntity>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SearchPhotosEntityToJson(
      this,
    );
  }
}

abstract class _SearchPhotosEntity implements SearchPhotosEntity {
  const factory _SearchPhotosEntity(
      {required final int id,
      required final SearchPhoto src}) = _$_SearchPhotosEntity;

  factory _SearchPhotosEntity.fromJson(Map<String, dynamic> json) =
      _$_SearchPhotosEntity.fromJson;

  @override
  int get id;
  @override
  SearchPhoto get src;
  @override
  @JsonKey(ignore: true)
  _$$_SearchPhotosEntityCopyWith<_$_SearchPhotosEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

SearchPhoto _$SearchPhotoFromJson(Map<String, dynamic> json) {
  return _SearchPhoto.fromJson(json);
}

/// @nodoc
mixin _$SearchPhoto {
  String get original => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchPhotoCopyWith<SearchPhoto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchPhotoCopyWith<$Res> {
  factory $SearchPhotoCopyWith(
          SearchPhoto value, $Res Function(SearchPhoto) then) =
      _$SearchPhotoCopyWithImpl<$Res, SearchPhoto>;
  @useResult
  $Res call({String original});
}

/// @nodoc
class _$SearchPhotoCopyWithImpl<$Res, $Val extends SearchPhoto>
    implements $SearchPhotoCopyWith<$Res> {
  _$SearchPhotoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? original = null,
  }) {
    return _then(_value.copyWith(
      original: null == original
          ? _value.original
          : original // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SearchPhotoCopyWith<$Res>
    implements $SearchPhotoCopyWith<$Res> {
  factory _$$_SearchPhotoCopyWith(
          _$_SearchPhoto value, $Res Function(_$_SearchPhoto) then) =
      __$$_SearchPhotoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String original});
}

/// @nodoc
class __$$_SearchPhotoCopyWithImpl<$Res>
    extends _$SearchPhotoCopyWithImpl<$Res, _$_SearchPhoto>
    implements _$$_SearchPhotoCopyWith<$Res> {
  __$$_SearchPhotoCopyWithImpl(
      _$_SearchPhoto _value, $Res Function(_$_SearchPhoto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? original = null,
  }) {
    return _then(_$_SearchPhoto(
      original: null == original
          ? _value.original
          : original // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SearchPhoto implements _SearchPhoto {
  const _$_SearchPhoto({required this.original});

  factory _$_SearchPhoto.fromJson(Map<String, dynamic> json) =>
      _$$_SearchPhotoFromJson(json);

  @override
  final String original;

  @override
  String toString() {
    return 'SearchPhoto(original: $original)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchPhoto &&
            (identical(other.original, original) ||
                other.original == original));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, original);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchPhotoCopyWith<_$_SearchPhoto> get copyWith =>
      __$$_SearchPhotoCopyWithImpl<_$_SearchPhoto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SearchPhotoToJson(
      this,
    );
  }
}

abstract class _SearchPhoto implements SearchPhoto {
  const factory _SearchPhoto({required final String original}) = _$_SearchPhoto;

  factory _SearchPhoto.fromJson(Map<String, dynamic> json) =
      _$_SearchPhoto.fromJson;

  @override
  String get original;
  @override
  @JsonKey(ignore: true)
  _$$_SearchPhotoCopyWith<_$_SearchPhoto> get copyWith =>
      throw _privateConstructorUsedError;
}

SearchRequest _$SearchRequestFromJson(Map<String, dynamic> json) {
  return _SearchRequest.fromJson(json);
}

/// @nodoc
mixin _$SearchRequest {
  int get page => throw _privateConstructorUsedError;
  String get query => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchRequestCopyWith<SearchRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchRequestCopyWith<$Res> {
  factory $SearchRequestCopyWith(
          SearchRequest value, $Res Function(SearchRequest) then) =
      _$SearchRequestCopyWithImpl<$Res, SearchRequest>;
  @useResult
  $Res call({int page, String query});
}

/// @nodoc
class _$SearchRequestCopyWithImpl<$Res, $Val extends SearchRequest>
    implements $SearchRequestCopyWith<$Res> {
  _$SearchRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? query = null,
  }) {
    return _then(_value.copyWith(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SearchRequestCopyWith<$Res>
    implements $SearchRequestCopyWith<$Res> {
  factory _$$_SearchRequestCopyWith(
          _$_SearchRequest value, $Res Function(_$_SearchRequest) then) =
      __$$_SearchRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int page, String query});
}

/// @nodoc
class __$$_SearchRequestCopyWithImpl<$Res>
    extends _$SearchRequestCopyWithImpl<$Res, _$_SearchRequest>
    implements _$$_SearchRequestCopyWith<$Res> {
  __$$_SearchRequestCopyWithImpl(
      _$_SearchRequest _value, $Res Function(_$_SearchRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? query = null,
  }) {
    return _then(_$_SearchRequest(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SearchRequest implements _SearchRequest {
  const _$_SearchRequest({required this.page, required this.query});

  factory _$_SearchRequest.fromJson(Map<String, dynamic> json) =>
      _$$_SearchRequestFromJson(json);

  @override
  final int page;
  @override
  final String query;

  @override
  String toString() {
    return 'SearchRequest(page: $page, query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchRequest &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.query, query) || other.query == query));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, page, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchRequestCopyWith<_$_SearchRequest> get copyWith =>
      __$$_SearchRequestCopyWithImpl<_$_SearchRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SearchRequestToJson(
      this,
    );
  }
}

abstract class _SearchRequest implements SearchRequest {
  const factory _SearchRequest(
      {required final int page,
      required final String query}) = _$_SearchRequest;

  factory _SearchRequest.fromJson(Map<String, dynamic> json) =
      _$_SearchRequest.fromJson;

  @override
  int get page;
  @override
  String get query;
  @override
  @JsonKey(ignore: true)
  _$$_SearchRequestCopyWith<_$_SearchRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
