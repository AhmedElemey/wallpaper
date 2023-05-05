import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../core/network/dio_provider.dart';

const _kGetHomeList = 'https://api.pexels.com/v1/curated?';

final searchDataSourceProvider = Provider((ref) {
  final dioClient = ref.watch(dioProvider);
  return HomeDataSoruce(client: dioClient);
});

class HomeDataSoruce {
  final Dio client;

  HomeDataSoruce({required this.client});

  Future<Map<String, dynamic>> fetcSearchList(
      Map<String, dynamic> params) async {
    try {
      final result = await client.get(_kGetHomeList, queryParameters: params);

      if (result.statusCode != 200) {
        throw Exception(result.data);
      }

      return result.data;
    } catch (exception) {
      if (exception.runtimeType == DioError) {
        final dioException = exception as DioError;

        throw Exception(dioException.errorMsg); // Do something with response
      }
      rethrow;
    }
  }
}
