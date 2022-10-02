import 'package:flutter/material.dart';
import 'package:latest_update/constant_item/custom_tag.dart';
import 'package:latest_update/pages/bottom_nav_bar.dart';
import 'package:latest_update/pages/read_details_article.dart';

class HomePage extends StatefulWidget {
  static const routeName = '/';

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
      bottomNavigationBar: const BottomNavBar(index: 0),
      extendBodyBehindAppBar: true,
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * .45,
            width: double.infinity,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(28),
                    bottomRight: Radius.circular(28)),
                image: DecorationImage(
                    image: NetworkImage(
                        'https://cdn.pixabay.com/photo/2016/02/01/00/56/news-1172463_960_720.jpg'),
                    fit: BoxFit.cover)),
            child: Container(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomTag(
                      backgroundColor: Colors.black.withAlpha(150),
                      children: [
                        Text(
                          'News of the day',
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(color: Colors.red),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Lorem Ipsum is simply dummy text of the printing .',
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall!
                          .copyWith(
                              fontWeight: FontWeight.bold,
                              height: 1.25,
                              color: Colors.red),
                    ),
                    TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(padding: EdgeInsets.zero),
                        child: Row(
                          children: [
                            Text(
                              "Learn More",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(color: Colors.red),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Icon(
                              Icons.arrow_right_alt,
                              color: Colors.red,
                            ),
                          ],
                        ))
                  ]),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Breaking News',
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                        fontWeight: FontWeight.bold, color: Colors.red)),
                Text('More',
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .copyWith(color: Colors.red))
              ],
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            margin: EdgeInsets.only(left: 13),
            height: 220,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index) {
                return Container(
                  width: MediaQuery.of(context).size.width * .5,
                  margin: const EdgeInsets.only(right: 10),
                  child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, DetailArticlePage.routeName);
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(28),
                          child: Image.network(
                            'https://i.pinimg.com/564x/dd/b1/24/ddb1244ae23de5fa7c85f00906cfbada.jpg',
                            width: MediaQuery.of(context).size.width * .5,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text('Lorem Ipsum is simply dummy',
                            style:
                                Theme.of(context).textTheme.bodyLarge!.copyWith(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    )),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          '2 hours ago',
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall!
                              .copyWith(color: Colors.grey),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Text(
                          'by Manika',
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall!
                              .copyWith(color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
