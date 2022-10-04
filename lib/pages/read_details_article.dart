import 'package:flutter/material.dart';

import '../constant_item/custom_tag.dart';

class DetailArticlePage extends StatefulWidget {
  static const routeName = '/detailes';

  const DetailArticlePage({Key? key}) : super(key: key);

  @override
  State<DetailArticlePage> createState() => _DetailArticlePageState();
}

class _DetailArticlePageState extends State<DetailArticlePage> {
  late Size size;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery
        .of(context)
        .size;
    return Scaffold(
      backgroundColor: Colors.transparent,
        body: Stack(children: [
          Positioned.fill(
              child: Image.network(
                'https://i.pinimg.com/564x/dd/b1/24/ddb1244ae23de5fa7c85f00906cfbada.jpg',
                fit: BoxFit.cover,
              )),
          ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomTag(backgroundColor: Colors.black, children: [
                        Text(
                          'Transport',
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(color: Colors.orange),
                        ),
                      ]),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Lorem Ipsum is simply dummy text of the printing .',
                        style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                            fontWeight: FontWeight.bold,
                            height: 1.25,
                            color: Colors.orange),
                      ),
                      Text(
                        'Lorem Ipsum is simply dummy text of the printing .',
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge!
                            .copyWith(color: Colors.orange),
                      ),
                    ],
                  ),
                ),
                Container(

                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        CustomTag(backgroundColor: Colors.black, children: [
                          CircleAvatar(
                            child: Image.network('https://i.pinimg.com/564x/dd/b1/24/ddb1244ae23de5fa7c85f00906cfbada.jpg'),
                            radius: 10,
                          ),
                          Text("Manika")
                        ])
                      ],
                    ),
                  ),
                )
              ],
          ),
        ]
        ),
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        leading: Icon(Icons.arrow_back),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),

    );
  }
}
