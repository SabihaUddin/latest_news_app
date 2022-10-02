import 'package:flutter/material.dart';
import 'package:latest_update/pages/categories_page.dart';
import 'package:latest_update/pages/home_page.dart';
import 'package:latest_update/pages/read_details_article.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      initialRoute: '/',
      routes: {
        HomePage.routeName:(_)=>HomePage(),
        CategoriesPage.routeName:(_)=>CategoriesPage(),
        DetailArticlePage.routeName:(_)=>DetailArticlePage()
      },
    );
  }
}

