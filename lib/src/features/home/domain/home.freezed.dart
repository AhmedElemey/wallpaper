// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HomeResponse _$HomeResponseFromJson(Map<String, dynamic> json) {
  return _HomeResponse.fromJson(json);
}

/// @nodoc
mixin _$HomeResponse {
  int get page => throw _privateConstructorUsedError;
  int get per_page => throw _privateConstructorUsedError;
  List<PhotosEntity>? get photos => throw _privateConstructorUsedError;
  int get total_results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeResponseCopyWith<HomeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeResponseCopyWith<$Res> {
  factory $HomeResponseCopyWith(
          HomeResponse value, $Res Function(HomeResponse) then) =
      _$HomeResponseCopyWithImpl<$Res, HomeResponse>;
  @useResult
  $Res call(
      {int page, int per_page, List<PhotosEntity>? photos, int total_results});
}

/// @nodoc
class _$HomeResponseCopyWithImpl<$Res, $Val extends HomeResponse>
    implements $HomeResponseCopyWith<$Res> {
  _$HomeResponseCopyWithImpl(this._value, this._then);

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
              as List<PhotosEntity>?,
      total_results: null == total_results
          ? _value.total_results
          : total_results // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HomeResponseCopyWith<$Res>
    implements $HomeResponseCopyWith<$Res> {
  factory _$$_HomeResponseCopyWith(
          _$_HomeResponse value, $Res Function(_$_HomeResponse) then) =
      __$$_HomeResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int page, int per_page, List<PhotosEntity>? photos, int total_results});
}

/// @nodoc
class __$$_HomeResponseCopyWithImpl<$Res>
    extends _$HomeResponseCopyWithImpl<$Res, _$_HomeResponse>
    implements _$$_HomeResponseCopyWith<$Res> {
  __$$_HomeResponseCopyWithImpl(
      _$_HomeResponse _value, $Res Function(_$_HomeResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? per_page = null,
    Object? photos = freezed,
    Object? total_results = null,
  }) {
    return _then(_$_HomeResponse(
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
              as List<PhotosEntity>?,
      total_results: null == total_results
          ? _value.total_results
          : total_results // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HomeResponse implements _HomeResponse {
  const _$_HomeResponse(
      {required this.page,
      required this.per_page,
      required final List<PhotosEntity>? photos,
      required this.total_results})
      : _photos = photos;

  factory _$_HomeResponse.fromJson(Map<String, dynamic> json) =>
      _$$_HomeResponseFromJson(json);

  @override
  final int page;
  @override
  final int per_page;
  final List<PhotosEntity>? _photos;
  @override
  List<PhotosEntity>? get photos {
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
    return 'HomeResponse(page: $page, per_page: $per_page, photos: $photos, total_results: $total_results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeResponse &&
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
  _$$_HomeResponseCopyWith<_$_HomeResponse> get copyWith =>
      __$$_HomeResponseCopyWithImpl<_$_HomeResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HomeResponseToJson(
      this,
    );
  }
}

abstract class _HomeResponse implements HomeResponse {
  const factory _HomeResponse(
      {required final int page,
      required final int per_page,
      required final List<PhotosEntity>? photos,
      required final int total_results}) = _$_HomeResponse;

  factory _HomeResponse.fromJson(Map<String, dynamic> json) =
      _$_HomeResponse.fromJson;

  @override
  int get page;
  @override
  int get per_page;
  @override
  List<PhotosEntity>? get photos;
  @override
  int get total_results;
  @override
  @JsonKey(ignore: true)
  _$$_HomeResponseCopyWith<_$_HomeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

PhotosEntity _$PhotosEntityFromJson(Map<String, dynamic> json) {
  return _PhotosEntity.fromJson(json);
}

/// @nodoc
mixin _$PhotosEntity {
  int get id => throw _privateConstructorUsedError;
  PhotoSrc get src => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PhotosEntityCopyWith<PhotosEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotosEntityCopyWith<$Res> {
  factory $PhotosEntityCopyWith(
          PhotosEntity value, $Res Function(PhotosEntity) then) =
      _$PhotosEntityCopyWithImpl<$Res, PhotosEntity>;
  @useResult
  $Res call({int id, PhotoSrc src});

  $PhotoSrcCopyWith<$Res> get src;
}

/// @nodoc
class _$PhotosEntityCopyWithImpl<$Res, $Val extends PhotosEntity>
    implements $PhotosEntityCopyWith<$Res> {
  _$PhotosEntityCopyWithImpl(this._value, this._then);

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
              as PhotoSrc,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PhotoSrcCopyWith<$Res> get src {
    return $PhotoSrcCopyWith<$Res>(_value.src, (value) {
      return _then(_value.copyWith(src: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PhotosEntityCopyWith<$Res>
    implements $PhotosEntityCopyWith<$Res> {
  factory _$$_PhotosEntityCopyWith(
          _$_PhotosEntity value, $Res Function(_$_PhotosEntity) then) =
      __$$_PhotosEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, PhotoSrc src});

  @override
  $PhotoSrcCopyWith<$Res> get src;
}

/// @nodoc
class __$$_PhotosEntityCopyWithImpl<$Res>
    extends _$PhotosEntityCopyWithImpl<$Res, _$_PhotosEntity>
    implements _$$_PhotosEntityCopyWith<$Res> {
  __$$_PhotosEntityCopyWithImpl(
      _$_PhotosEntity _value, $Res Function(_$_PhotosEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? src = null,
  }) {
    return _then(_$_PhotosEntity(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      src: null == src
          ? _value.src
          : src // ignore: cast_nullable_to_non_nullable
              as PhotoSrc,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PhotosEntity implements _PhotosEntity {
  const _$_PhotosEntity({required this.id, required this.src});

  factory _$_PhotosEntity.fromJson(Map<String, dynamic> json) =>
      _$$_PhotosEntityFromJson(json);

  @override
  final int id;
  @override
  final PhotoSrc src;

  @override
  String toString() {
    return 'PhotosEntity(id: $id, src: $src)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PhotosEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.src, src) || other.src == src));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, src);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PhotosEntityCopyWith<_$_PhotosEntity> get copyWith =>
      __$$_PhotosEntityCopyWithImpl<_$_PhotosEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PhotosEntityToJson(
      this,
    );
  }
}

abstract class _PhotosEntity implements PhotosEntity {
  const factory _PhotosEntity(
      {required final int id, required final PhotoSrc src}) = _$_PhotosEntity;

  factory _PhotosEntity.fromJson(Map<String, dynamic> json) =
      _$_PhotosEntity.fromJson;

  @override
  int get id;
  @override
  PhotoSrc get src;
  @override
  @JsonKey(ignore: true)
  _$$_PhotosEntityCopyWith<_$_PhotosEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

PhotoSrc _$PhotoSrcFromJson(Map<String, dynamic> json) {
  return _PhotoSrc.fromJson(json);
}

/// @nodoc
mixin _$PhotoSrc {
  String get original => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PhotoSrcCopyWith<PhotoSrc> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotoSrcCopyWith<$Res> {
  factory $PhotoSrcCopyWith(PhotoSrc value, $Res Function(PhotoSrc) then) =
      _$PhotoSrcCopyWithImpl<$Res, PhotoSrc>;
  @useResult
  $Res call({String original});
}

/// @nodoc
class _$PhotoSrcCopyWithImpl<$Res, $Val extends PhotoSrc>
    implements $PhotoSrcCopyWith<$Res> {
  _$PhotoSrcCopyWithImpl(this._value, this._then);

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
abstract class _$$_PhotoSrcCopyWith<$Res> implements $PhotoSrcCopyWith<$Res> {
  factory _$$_PhotoSrcCopyWith(
          _$_PhotoSrc value, $Res Function(_$_PhotoSrc) then) =
      __$$_PhotoSrcCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String original});
}

/// @nodoc
class __$$_PhotoSrcCopyWithImpl<$Res>
    extends _$PhotoSrcCopyWithImpl<$Res, _$_PhotoSrc>
    implements _$$_PhotoSrcCopyWith<$Res> {
  __$$_PhotoSrcCopyWithImpl(
      _$_PhotoSrc _value, $Res Function(_$_PhotoSrc) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? original = null,
  }) {
    return _then(_$_PhotoSrc(
      original: null == original
          ? _value.original
          : original // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PhotoSrc implements _PhotoSrc {
  const _$_PhotoSrc({required this.original});

  factory _$_PhotoSrc.fromJson(Map<String, dynamic> json) =>
      _$$_PhotoSrcFromJson(json);

  @override
  final String original;

  @override
  String toString() {
    return 'PhotoSrc(original: $original)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PhotoSrc &&
            (identical(other.original, original) ||
                other.original == original));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, original);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PhotoSrcCopyWith<_$_PhotoSrc> get copyWith =>
      __$$_PhotoSrcCopyWithImpl<_$_PhotoSrc>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PhotoSrcToJson(
      this,
    );
  }
}

abstract class _PhotoSrc implements PhotoSrc {
  const factory _PhotoSrc({required final String original}) = _$_PhotoSrc;

  factory _PhotoSrc.fromJson(Map<String, dynamic> json) = _$_PhotoSrc.fromJson;

  @override
  String get original;
  @override
  @JsonKey(ignore: true)
  _$$_PhotoSrcCopyWith<_$_PhotoSrc> get copyWith =>
      throw _privateConstructorUsedError;
}

HomeRequest _$HomeRequestFromJson(Map<String, dynamic> json) {
  return _HomeRequest.fromJson(json);
}

/// @nodoc
mixin _$HomeRequest {
  int get page => throw _privateConstructorUsedError;
  int get per_page => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeRequestCopyWith<HomeRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeRequestCopyWith<$Res> {
  factory $HomeRequestCopyWith(
          HomeRequest value, $Res Function(HomeRequest) then) =
      _$HomeRequestCopyWithImpl<$Res, HomeRequest>;
  @useResult
  $Res call({int page, int per_page});
}

/// @nodoc
class _$HomeRequestCopyWithImpl<$Res, $Val extends HomeRequest>
    implements $HomeRequestCopyWith<$Res> {
  _$HomeRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? per_page = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HomeRequestCopyWith<$Res>
    implements $HomeRequestCopyWith<$Res> {
  factory _$$_HomeRequestCopyWith(
          _$_HomeRequest value, $Res Function(_$_HomeRequest) then) =
      __$$_HomeRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int page, int per_page});
}

/// @nodoc
class __$$_HomeRequestCopyWithImpl<$Res>
    extends _$HomeRequestCopyWithImpl<$Res, _$_HomeRequest>
    implements _$$_HomeRequestCopyWith<$Res> {
  __$$_HomeRequestCopyWithImpl(
      _$_HomeRequest _value, $Res Function(_$_HomeRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? per_page = null,
  }) {
    return _then(_$_HomeRequest(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      per_page: null == per_page
          ? _value.per_page
          : per_page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HomeRequest implements _HomeRequest {
  const _$_HomeRequest({required this.page, required this.per_page});

  factory _$_HomeRequest.fromJson(Map<String, dynamic> json) =>
      _$$_HomeRequestFromJson(json);

  @override
  final int page;
  @override
  final int per_page;

  @override
  String toString() {
    return 'HomeRequest(page: $page, per_page: $per_page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeRequest &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.per_page, per_page) ||
                other.per_page == per_page));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, page, per_page);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeRequestCopyWith<_$_HomeRequest> get copyWith =>
      __$$_HomeRequestCopyWithImpl<_$_HomeRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HomeRequestToJson(
      this,
    );
  }
}

abstract class _HomeRequest implements HomeRequest {
  const factory _HomeRequest(
      {required final int page, required final int per_page}) = _$_HomeRequest;

  factory _HomeRequest.fromJson(Map<String, dynamic> json) =
      _$_HomeRequest.fromJson;

  @override
  int get page;
  @override
  int get per_page;
  @override
  @JsonKey(ignore: true)
  _$$_HomeRequestCopyWith<_$_HomeRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
