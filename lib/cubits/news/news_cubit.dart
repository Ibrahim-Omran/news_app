import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app_new/helper/model_api.dart';

import '../../helper/dio_helper.dart';
import 'news_state.dart';


class NewsCubit extends Cubit<NewsState>{
  NewsCubit(this.newsService):super(NewsInitialState());

  final Articles newsModel;
  NewsService newsService;

  List<dynamic> business = [];
void getBusinessNews()async{
  emit(NewsGetBusinessLoadingState());
  try {
    newsModel = await newsService.getNews(NameNews: 'business');
    emit(NewsGetBusinessSuccessState());
  }catch(e){
    emit(NewsGetBusinessErrorsState('Error'));

  }
  
}


  final HomeRepo homeRepo;

  Future<void> fetchNewestBooks()async{
    emit(NewsetBooksLoading());
    var result = await homeRepo.fetchNewsetBooks();

    result.fold((failure) {
      emit(NewsetBooksFailure(failure.errMessage));
    }, (books) {
      emit(NewsetBooksSuccess(books));
    });

  }
}




  // void getBusiness(){
  //   emit(NewsGetBusinessLoadingState());
  //   DioHelper.getData(
  //       url: 'v2/top-headlines',
  //       query: {
  //         'country':'eg',
  //         'category':'business',
  //         'apikey':'2dea5aed340d44d79bcb4d632cbb2970',
  //       }
  //   ).then((value){
  //     //print(value.data['articles'][0]['title']);
  //     business = value.data['articles'];
  //     print(business[0]['title']);
  //     emit(NewsGetBusinessSuccessState());
  //   }).catchError((error){
  //     print(error.toString());
  //     emit(NewsGetBusinessErrorsState(error.toString()));
  //   });
  // }
  //
  // List<dynamic> sports = [];
  // void getSports(){
  //   emit(NewsGetSportsLoadingState());
  //   if(sports.isEmpty){
  //     DioHelper.getData(
  //         url: 'v2/top-headlines',
  //         query: {
  //           'country':'eg',
  //           'category':'sports',
  //           'apikey':'2dea5aed340d44d79bcb4d632cbb2970',
  //         }
  //     ).then((value){
  //       //print(value.data['articles'][0]['title']);
  //       sports = value.data['articles'];
  //       print(sports[0]['title']);
  //       emit(NewsGetSportsSuccessState());
  //     }).catchError((error){
  //       print(error.toString());
  //       emit(NewsGetSportsErrorsState(error.toString()));
  //     });
  //   }else{
  //     emit(NewsGetSportsSuccessState());
  //   }
  //
  //
  // }
  // List<dynamic> science = [];
  // void getScience(){
  //   emit(NewsGetScienceLoadingState());
  //   if(science.isEmpty){
  //     DioHelper.getData(
  //         url: 'v2/top-headlines',
  //         query: {
  //           'country':'eg',
  //           'category':'science',
  //           'apikey':'2dea5aed340d44d79bcb4d632cbb2970',
  //         }
  //     ).then((value){
  //       //print(value.data['articles'][0]['title']);
  //       science = value.data['articles'];
  //       print(science[0]['title']);
  //       emit(NewsGetScienceSuccessState());
  //     }).catchError((error){
  //       print(error.toString());
  //       emit(NewsGetScienceErrorsState(error.toString()));
  //     });
  //   }else{
  //     emit(NewsGetScienceSuccessState());
  //   }
  //
  // }
  //
  // List<dynamic> search = [];
  // void getSearch(String value){
  //
  //   emit(NewsGetSearchLoadingState());
  //   //search = [];
  //   DioHelper.getData(
  //       url: 'v2/everything',
  //       query: {
  //         'q':'$value',
  //         'apikey':'2dea5aed340d44d79bcb4d632cbb2970',
  //       }
  //   ).then((value){
  //     //print(value.data['articles'][0]['title']);
  //     search = value.data['articles'];
  //     print(search[0]['title']);
  //     emit(NewsGetSearchSuccessState());
  //   }).catchError((error){
  //     print(error.toString());
  //     emit(NewsGetSearchErrorsState(error.toString()));
  //   });
  //
  // }


//https://newsapi.org/v2/top-headlines?country=eg&category=business&apikey=2dea5aed340d44d79bcb4d632cbb2970



}