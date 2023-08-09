import 'package:news_app_new/helper/model_api.dart';

abstract class NewsState{
  const NewsState();

  @override
  List<Object> get props => [];
}

class NewsInitialState extends NewsState{}
class NewsBottomNavState extends NewsState{}

class NewsGetBusinessLoadingState extends NewsState{}
class NewsGetBusinessSuccessState extends NewsState{
  final List<Articles> news;

  const NewsGetBusinessSuccessState(this.news);


}
class NewsGetBusinessErrorsState extends NewsState{
  final String error;
  NewsGetBusinessErrorsState(this.error);

}


class NewsGetSportsLoadingState extends NewsState{}
class NewsGetSportsSuccessState extends NewsState{}
class NewsGetSportsErrorsState extends NewsState{
  final String error;
  NewsGetSportsErrorsState(this.error);

}



class NewsGetScienceLoadingState extends NewsState{}
class NewsGetScienceSuccessState extends NewsState{}
class NewsGetScienceErrorsState extends NewsState{
  final String error;
  NewsGetScienceErrorsState(this.error);

}


class NewsGetSearchLoadingState extends NewsState{}
class NewsGetSearchSuccessState extends NewsState{}
class NewsGetSearchErrorsState extends NewsState{
  final String error;
  NewsGetSearchErrorsState(this.error);

}
