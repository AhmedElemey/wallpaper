import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../domain/home.dart';
import 'home_data_source.dart';

final homeRepoProvider = Provider((ref) => HomeRepository(ref: ref));

class HomeRepository {
  final Ref ref;
  const HomeRepository({required this.ref});

  Future<HomeResponse> fetchHomeList(HomeRequest params) async {
    final result =
        await ref.read(homeDataSourceProvider).fetchHomeList(params.toJson());
    final response = HomeResponse.fromJson(result);

    return response;
  }

  Future<HomeResponse> getMoreHomeData(HomeRequest params) async {
    final result =
        await ref.read(homeDataSourceProvider).getMoreHomeData(params.toJson());
    final response = HomeResponse.fromJson(result);
    // if (!response.success) {
    //   return Future.error(
    //       'Failed to fetch Notification data:\n${response.message}');
    // }
    return response;
  }
}
