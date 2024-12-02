import 'package:clean_architecture/features/data/data_source/data_source.dart';
import 'package:clean_architecture/features/domain/entity/entity.dart';
import 'package:clean_architecture/features/domain/repository/repository.dart';

class PostRepositoryImpl implements PostRepository {
  final PostRemoteDataSource remoteDataSource;

  PostRepositoryImpl(this.remoteDataSource);

  @override
  Future<List<Post>> fetchPosts() async {
    final models = await remoteDataSource.fetchPosts();
    return models.map((model) => model.toEntity()).toList();
  }
}
