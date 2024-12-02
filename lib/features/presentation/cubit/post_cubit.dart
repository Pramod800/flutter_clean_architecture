import 'package:bloc/bloc.dart';
import 'package:clean_architecture/features/domain/usecases/use_cases.dart';
import 'package:clean_architecture/features/presentation/cubit/post_state.dart';

class PostCubit extends Cubit<PostState> {
  final FetchPostsUseCase fetchPostsUseCase;

  PostCubit(this.fetchPostsUseCase) : super(PostInitial());

  Future<void> fetchPosts() async {
    emit(PostLoading());
    try {
      final posts = await fetchPostsUseCase.execute();
      emit(PostLoaded(posts));
    } catch (e) {
      emit(PostError(e.toString()));
    }
  }
}
