import 'package:flutter/material.dart';

import 'bottom_nav_bar.dart';

class CategoriesPage extends StatefulWidget {
  static const routeName = '/categories';

  const CategoriesPage({Key? key}) : super(key: key);

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              color: Colors.red,
            ),
          ),
        ),
        bottomNavigationBar: const BottomNavBar(index: 1),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
              children: [
                Text(
                  'Discover',
                  style: Theme.of(context).textTheme.headline4!.copyWith(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20,),
                Text(
                  'News from all over the world',
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20,),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Search',
                    fillColor: Colors.grey.shade200,
                    filled: true,
                    prefixIcon:const Icon(Icons.search,
                    color: Colors.grey,),
                    suffixIcon:const
                    Icon(
                      Icons.tune,color: Colors.grey,
                    ),
                    border:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none
                    ) ,
                  ),

                )
              ],
            ),
        ));
  }
}

