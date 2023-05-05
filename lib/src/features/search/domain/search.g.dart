// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SearchResponse _$$_SearchResponseFromJson(Map<String, dynamic> json) =>
    _$_SearchResponse(
      page: json['page'] as int,
      per_page: json['per_page'] as int,
      photos: (json['photos'] as List<dynamic>?)
          ?.map((e) => SearchPhotosEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      total_results: json['total_results'] as int,
    );

Map<String, dynamic> _$$_SearchResponseToJson(_$_SearchResponse instance) =>
    <String, dynamic>{
      'page': instance.page,
      'per_page': instance.per_page,
      'photos': instance.photos,
      'total_results': instance.total_results,
    };

_$_SearchPhotosEntity _$$_SearchPhotosEntityFromJson(
        Map<String, dynamic> json) =>
    _$_SearchPhotosEntity(
      id: json['id'] as int,
      src: SearchPhoto.fromJson(json['src'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_SearchPhotosEntityToJson(
        _$_SearchPhotosEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'src': instance.src,
    };

_$_SearchPhoto _$$_SearchPhotoFromJson(Map<String, dynamic> json) =>
    _$_SearchPhoto(
      original: json['original'] as String,
    );

Map<String, dynamic> _$$_SearchPhotoToJson(_$_SearchPhoto instance) =>
    <String, dynamic>{
      'original': instance.original,
    };

_$_SearchRequest _$$_SearchRequestFromJson(Map<String, dynamic> json) =>
    _$_SearchRequest(
      page: json['page'] as int,
      query: json['query'] as String,
    );

Map<String, dynamic> _$$_SearchRequestToJson(_$_SearchRequest instance) =>
    <String, dynamic>{
      'page': instance.page,
      'query': instance.query,
    };
