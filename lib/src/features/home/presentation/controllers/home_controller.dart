import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wallpaper/src/features/home/domain/home.dart';

import '../../data/home_data_repository.dart';
import '../pages/home_view.dart';

final homeListFutureProvider = StateNotifierProvider.autoDispose<
    HomeStateNotifier, AsyncValue<List<PhotosEntity>?>>((ref) {
  return HomeStateNotifier(const AsyncValue.data([]), ref: ref)
    ..fetchHomeList(const HomeRequest(page: 1, per_page: 10));
});

class HomeStateNotifier extends StateNotifier<AsyncValue<List<PhotosEntity>?>> {
  HomeStateNotifier(super.state, {required this.ref});
  final Ref ref;
  Future<void> fetchHomeList(HomeRequest params) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      final result = await ref.read(homeRepoProvider).fetchHomeList(params);
      final temp = result.photos;
      return temp;
    });
  }

  Future<void> getMoreHomeData(HomeRequest params) async {
    state = await AsyncValue.guard(() async {
      final result = await ref.read(homeRepoProvider).getMoreHomeData(params);
      final temp = result.photos;
      if (state.hasValue && temp != null) {
        if (temp.length < 10) {
          ref.read(isLastHomeDataRequest.notifier).state = true;
        }
        // final newTemp = AsyncValue.data([...state.value!, ...temp]);
        final newTemp = AsyncValue.data([...state.value!, ...temp]);
        return newTemp.value;
      } else {
        return temp!;
      }
    });
  }
}
