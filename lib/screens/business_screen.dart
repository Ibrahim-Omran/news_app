import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app_new/cubits/news/news_cubit.dart';
import 'package:news_app_new/cubits/news/news_state.dart';
import 'package:news_app_new/widget/NewsListView.dart';
import 'package:news_app_new/widget/custom_app_bar.dart';
class BusinessScreen extends StatelessWidget {
  const BusinessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                children:  [
                  CustomAppBar(),



                ],
              ),
            ),

            const SliverFillRemaining(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child:NewsListView(),
              ),
            ),

          ],

        ),
      ),

    );
  }
}

