import 'package:clean_architecture/features/domain/entity/entity.dart';

abstract class PostRepository {
  Future<List<Post>> fetchPosts();
}
