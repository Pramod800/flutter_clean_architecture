import 'package:clean_architecture/core/get_it.dart';
import 'package:clean_architecture/features/presentation/cubit/post_cubit.dart';
import 'package:clean_architecture/features/presentation/screens/screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => sl<PostCubit>()),
      ],
      child: const MaterialApp(
        home: PostsPage(),
      ),
    );
  }
}
