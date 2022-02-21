import 'package:bloc/bloc.dart';
import 'package:eraa_soft_course/work_shop_1/bloc/states.dart';
import 'package:eraa_soft_course/work_shop_1/dio_helper/dio_helper.dart';
import 'package:eraa_soft_course/work_shop_1/model/news_model.dart';
import 'package:eraa_soft_course/work_shop_1/moduls/business_screen.dart';
 import 'package:eraa_soft_course/work_shop_1/moduls/health.dart';
import 'package:eraa_soft_course/work_shop_1/moduls/science_screen.dart';
import 'package:eraa_soft_course/work_shop_1/moduls/sport_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewsCubit extends Cubit<NewsStates>{
  NewsCubit() : super(NewsInitialState());

  static NewsCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;
   NewsHub newsHub;


  List<Widget> screens = [
    SportScreen(),
    BusinessScreen(),
    HealthScreen(),
    ScienceScreen(),
  ];

  void changeNavBar(index)
  {
    currentIndex=index;
    emit(NewsChangeNavBarState());
  }



  List<Articles> healthArticle=[];
  void getHealthData()
  {
    DioHelper.getData(
      query: {
        "country":"eg",
        "category":"health",
        "apiKey":"061656a4c0e04cf3add75a8a2eecb614",
      },
    ).then((value){
      print(value.data.toString());
      newsHub=NewsHub.fromJson(value.data);
      for(var article in newsHub.articles)
        healthArticle.add(article);
      print(healthArticle[0].title);
      emit(getHealthDataSucessState());
    }
    ).catchError((error)
    {
      print("errrrrrr ${error.toString()}");
    },
    );
    emit(getHealthDataErrorState());
  }


  List<Articles> businessArticle=[];
  void getBusinessData()
  {
    DioHelper.getData(
      query: {
        "country":"eg",
        "category":"business",
        "apiKey":"061656a4c0e04cf3add75a8a2eecb614",
      },
    ).then((value){
      print(value.data.toString());
      newsHub=NewsHub.fromJson(value.data);
      for(var article in newsHub.articles)
        businessArticle.add(article);
      print(businessArticle[0].title);
      emit(getBusinessDataSucessState());
    }
    ).catchError((error)
    {
      print("errrrrrr ${error.toString()}");
    },
    );
    emit(getBusinessDataErrorState());
  }

  List<Articles> scienceArticle=[];
  void getScienceData()
  {
    DioHelper.getData(
      query: {
        "country":"eg",
        "category":"science",
        "apiKey":"061656a4c0e04cf3add75a8a2eecb614",
      },
    ).then((value){
      print(value.data.toString());
      newsHub=NewsHub.fromJson(value.data);
      for(var article in newsHub.articles)
        scienceArticle.add(article);
      print(scienceArticle[0].title);
      emit(getsceinceDataSucessState());
    }
    ).catchError((error)
    {
      print("errrrrrr ${error.toString()}");
    },
    );
    emit(getsceinceDataErrorState());
  }

  List<Articles> sportArticle=[];
  void getSportData()
  {
    DioHelper.getData(
      query: {
        "country":"eg",
        "category":"sports",
        "apiKey":"061656a4c0e04cf3add75a8a2eecb614",
      },
    ).then((value){
      print(value.data.toString());
      newsHub=NewsHub.fromJson(value.data);
      for(var article in newsHub.articles)
        sportArticle.add(article);
      print(sportArticle[0].title);
      emit(getSportDataSucessState());
    }
    ).catchError((error)
    {
      print("errrrrrr ${error.toString()}");
    },
    );
    emit(getSportDataErrorState());
  }

}