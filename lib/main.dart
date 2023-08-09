import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app_new/helper/dio_helper.dart';
import 'package:news_app_new/helper/model_api.dart';
import 'package:news_app_new/screens/home_screen.dart';

import 'cubits/news/news_cubit.dart';

void main() {

  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {


    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => NewsCubit(NewsService())..getBusinessNews(),
        ),

      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,

        home: HomeScreen(),
      ),
    );
  }
}
