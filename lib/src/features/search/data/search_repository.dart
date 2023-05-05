import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wallpaper/src/features/search/data/search_datasource.dart';
import 'package:wallpaper/src/features/search/domain/search.dart';

final searchRepoProvider = Provider((ref) => SearchRepository(ref: ref));

class SearchRepository {
  final Ref ref;
  const SearchRepository({required this.ref});

  Future<SearchResponse> fetchSearchList(SearchRequest params) async {
    final result = await ref
        .read(searchDataSourceProvider)
        .fetcSearchList(params.toJson());
    final response = SearchResponse.fromJson(result);

    return response;
  }
}
