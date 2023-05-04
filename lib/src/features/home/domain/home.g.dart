// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HomeResponse _$$_HomeResponseFromJson(Map<String, dynamic> json) =>
    _$_HomeResponse(
      page: json['page'] as int,
      per_page: json['per_page'] as int,
      photos: (json['photos'] as List<dynamic>?)
          ?.map((e) => PhotosEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      total_results: json['total_results'] as int,
    );

Map<String, dynamic> _$$_HomeResponseToJson(_$_HomeResponse instance) =>
    <String, dynamic>{
      'page': instance.page,
      'per_page': instance.per_page,
      'photos': instance.photos,
      'total_results': instance.total_results,
    };

_$_PhotosEntity _$$_PhotosEntityFromJson(Map<String, dynamic> json) =>
    _$_PhotosEntity(
      id: json['id'] as int,
      src: PhotoSrc.fromJson(json['src'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PhotosEntityToJson(_$_PhotosEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'src': instance.src,
    };

_$_PhotoSrc _$$_PhotoSrcFromJson(Map<String, dynamic> json) => _$_PhotoSrc(
      original: json['original'] as String,
    );

Map<String, dynamic> _$$_PhotoSrcToJson(_$_PhotoSrc instance) =>
    <String, dynamic>{
      'original': instance.original,
    };

_$_HomeRequest _$$_HomeRequestFromJson(Map<String, dynamic> json) =>
    _$_HomeRequest(
      page: json['page'] as int,
      per_page: json['per_page'] as int,
    );

Map<String, dynamic> _$$_HomeRequestToJson(_$_HomeRequest instance) =>
    <String, dynamic>{
      'page': instance.page,
      'per_page': instance.per_page,
    };
