import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app_new/cubits/news/news_cubit.dart';
import 'package:news_app_new/cubits/news/news_state.dart';
import 'package:news_app_new/helper/model_api.dart';

class NewsListViewItem extends StatelessWidget {
  const NewsListViewItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsCubit,NewsState>(

      builder: (context,state){
        if(state is NewsGetBusinessLoadingState){
          return const Center(child: CircularProgressIndicator(value: 1,));
        }else if(state is NewsGetBusinessSuccessState){
          return  Show(articles: state.,);
        }else if(state is NewsGetBusinessErrorsState){
          return const Text('Error');
        }else{
          return const Text('jajjjafjfejje');
        }
      }
    );
  }
}


class Show extends StatelessWidget {
    const Show({Key? key, required this.articles}) : super(key: key);
  final Articles articles;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        children: [
          Container(
            width: 120,
            height: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image:  const DecorationImage(
                image: NetworkImage(
                  'https://play-lh.googleusercontent.com/uAu69C99ameBLdlE1Iv2ypibSqwQ3lqQGqm0NzcR1XpQ5gjBfNfW2sotbhfg2hPSjGZ3',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 20,),
          Expanded(
            child: SizedBox(
              height: 120,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children:  [
                  Expanded(
                    child: Text(
                     Articles.,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,

                      ),
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Text(
                    'jjjjjaifiqoofoEKFf',
                    style: const TextStyle(
                      color: Colors.grey,
                      // fontSize: 18,
                      // fontWeight: FontWeight.w600,
                    ),
                  ),


                ],
              ),
            ),
          ),


        ],
      ),
    );
  }
}

