import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wallpaper/src/features/search/domain/search.dart';

import '../../data/search_repository.dart';

final searchListFutureProvider = StateNotifierProvider.autoDispose<
    SearchStateNotifier, AsyncValue<List<SearchPhotosEntity>?>>((ref) {
  return SearchStateNotifier(const AsyncValue.data([]), ref: ref);
  // ..fetchSearchList(const SearchRequest(page: 1, query: ''));
});

class SearchStateNotifier
    extends StateNotifier<AsyncValue<List<SearchPhotosEntity>?>> {
  SearchStateNotifier(super.state, {required this.ref});
  final Ref ref;
  Future<void> fetchSearchList(SearchRequest params) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      final result = await ref.read(searchRepoProvider).fetchSearchList(params);
      final temp = result.photos;
      return temp;
    });
  }
}
