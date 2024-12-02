import 'package:clean_architecture/features/domain/entity/entity.dart';
import 'package:clean_architecture/features/domain/repository/repository.dart';

class FetchPostsUseCase {
  final PostRepository repository;

  FetchPostsUseCase(this.repository);

  Future<List<Post>> execute() async {
    return await repository.fetchPosts();
  }
}
