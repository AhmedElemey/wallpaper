// ignore_for_file: non_constant_identifier_names
// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home.freezed.dart';
part 'home.g.dart';

@freezed
class HomeResponse with _$HomeResponse {
  const factory HomeResponse({
    required int page,
    required int per_page,
    required List<PhotosEntity>? photos,
    required int total_results,
  }) = _HomeResponse;
  factory HomeResponse.fromJson(Map<String, dynamic> json) =>
      _$HomeResponseFromJson(json);
}

@freezed
class PhotosEntity with _$PhotosEntity {
  const factory PhotosEntity({
    required int id,
    required PhotoSrc src,
  }) = _PhotosEntity;
  factory PhotosEntity.fromJson(Map<String, dynamic> json) =>
      _$PhotosEntityFromJson(json);
}

@freezed
class PhotoSrc with _$PhotoSrc {
  const factory PhotoSrc({
    required String original,
  }) = _PhotoSrc;
  factory PhotoSrc.fromJson(Map<String, dynamic> json) =>
      _$PhotoSrcFromJson(json);
}

@freezed
class HomeRequest with _$HomeRequest {
  const factory HomeRequest({
    required int page,
    required int per_page,
  }) = _HomeRequest;
  factory HomeRequest.fromJson(Map<String, dynamic> json) =>
      _$HomeRequestFromJson(json);
}
