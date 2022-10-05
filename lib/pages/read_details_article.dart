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
    size = MediaQuery.of(context).size;
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
            const SizedBox(
              height: 50,
            ),
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomTag(backgroundColor: Colors.black, children: [
                          CircleAvatar(
                            child: Image.network(
                                'https://i.pinimg.com/564x/dd/b1/24/ddb1244ae23de5fa7c85f00906cfbada.jpg'),
                            radius: 10,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Manika",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(color: Colors.white),
                          )
                        ]),
                        CustomTag(
                            backgroundColor: const Color(0xFFEEEEEE),
                            children: [
                              const Icon(
                                Icons.timelapse_outlined,
                                color: Colors.black,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text('2h ago',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(
                                        color: Colors.black,
                                      )),
                            ]),
                        CustomTag(
                            backgroundColor: Colors.grey.shade200,
                            children: [
                              const Icon(
                                Icons.visibility,
                                color: Colors.black,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text('376',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(
                                        color: Colors.black,
                                      )),
                            ])
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Lorem Ipsum is simply dummy text ',
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall!
                          .copyWith(
                              color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                        '''Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.''',
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(color: Colors.black, height: 1.5)),
                    const SizedBox(
                      height: 20,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: GridView.builder(
                        
                        shrinkWrap: true,
                          itemCount: 2,
                          gridDelegate:
                             const SliverGridDelegateWithFixedCrossAxisCount(
                               crossAxisSpacing: 10,
                                crossAxisCount: 2,
                                childAspectRatio: 1.5
                              ),
                          itemBuilder: (context, index) {
                            return Image.network('https://i.pinimg.com/564x/dd/b1/24/ddb1244ae23de5fa7c85f00906cfbada.jpg',
                            width: MediaQuery.of(context).size.height*0.30,
                            );

                          }),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ]),
    );
  }
}
