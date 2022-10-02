import 'package:flutter/material.dart';

class DetailArticlePage extends StatefulWidget {
  static const routeName='/detailes';
  const DetailArticlePage({Key? key}) : super(key: key);

  @override
  State<DetailArticlePage> createState() => _DetailArticlePageState();
}

class _DetailArticlePageState extends State<DetailArticlePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(title: Text('ARTICLE'),),
    );
  }
}
