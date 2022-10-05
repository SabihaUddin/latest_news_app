import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../model/news_response_model.dart';

class NewsProvider extends ChangeNotifier {
  List<Article> newsList = [];
  
  Future getNews() async {
    try {
      http.Response response= await http.get(
        Uri.parse('https://newsapi.org/v2/everything?q=tesla&from=2022-08-28&sortBy=publishedAt&apiKey=ad5511c0dc0d4d77b58a03cfe73b2677')
      );
      if(response.statusCode==200){
           NewsModel.fromJson(jsonDecode(response.body));
        debugPrint(newsList.length.toString());
      }
      notifyListeners();
    }on SocketException{
debugPrint('No internet connection');
    }catch(e){
      debugPrint("error - $e");
    }
  }
}
