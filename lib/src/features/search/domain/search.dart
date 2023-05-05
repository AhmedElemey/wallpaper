// ignore_for_file: non_constant_identifier_names
// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search.freezed.dart';
part 'search.g.dart';

@freezed
class SearchResponse with _$SearchResponse {
  const factory SearchResponse({
    required int page,
    required int per_page,
    required List<SearchPhotosEntity>? photos,
    required int total_results,
  }) = _SearchResponse;
  factory SearchResponse.fromJson(Map<String, dynamic> json) =>
      _$SearchResponseFromJson(json);
}

@freezed
class SearchPhotosEntity with _$SearchPhotosEntity {
  const factory SearchPhotosEntity({
    required int id,
    required SearchPhoto src,
  }) = _SearchPhotosEntity;
  factory SearchPhotosEntity.fromJson(Map<String, dynamic> json) =>
      _$SearchPhotosEntityFromJson(json);
}

@freezed
class SearchPhoto with _$SearchPhoto {
  const factory SearchPhoto({
    required String original,
  }) = _SearchPhoto;
  factory SearchPhoto.fromJson(Map<String, dynamic> json) =>
      _$SearchPhotoFromJson(json);
}

@freezed
class SearchRequest with _$SearchRequest {
  const factory SearchRequest({
    required int page,
    required String query,
  }) = _SearchRequest;
  factory SearchRequest.fromJson(Map<String, dynamic> json) =>
      _$SearchRequestFromJson(json);
}
