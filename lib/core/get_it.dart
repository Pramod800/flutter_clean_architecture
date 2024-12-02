import 'package:clean_architecture/features/data/data_source/data_source.dart';
import 'package:clean_architecture/features/data/repository/repository.dart';
import 'package:clean_architecture/features/domain/repository/repository.dart';
import 'package:clean_architecture/features/domain/usecases/use_cases.dart';
import 'package:clean_architecture/features/presentation/cubit/post_cubit.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;


final sl = GetIt.instance;

void setup() {
  // External
  sl.registerLazySingleton(() => http.Client());

  // Data sources
  sl.registerLazySingleton<PostRemoteDataSource>(
      () => PostRemoteDataSourceImpl(sl()));

  // Repositories
  sl.registerLazySingleton<PostRepository>(() => PostRepositoryImpl(sl()));

  // Use cases
  sl.registerLazySingleton(() => FetchPostsUseCase(sl()));

  // Cubit
  sl.registerFactory(() => PostCubit(sl()));
}
