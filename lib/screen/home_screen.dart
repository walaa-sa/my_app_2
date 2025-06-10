import 'package:flutter/material.dart';
import 'package:my_app_2/service/trading-details_service.dart';
import 'package:my_app_2/widgets/tob-news_wedget.dart';
import 'package:my_app_2/widgets/trading_news_widget.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // late Future<List<NewsModelds>> myNewsList;

  int currentIndex = 0;

  List<String> categories = [
    "Top News",
    "Politics",
    "Tech",
    "Buisiness",
    "Sports",
    "Technology",
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // myNewsList = TradingDetailsService.fetchTradingDetails();
  }

  @override
  Widget build(BuildContext context) {
    double widthScreen = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: double.infinity,
                  height: 230,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        "assets/images/images 2.png",
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 50,
                  left: widthScreen / 2 - 70,
                  child: Image.asset(
                    "assets/images/logoNewst-01.png",
                    width: 150,
                  ),
                ),
                Positioned(
                  top: 104,
                  right: 16,
                  left: 16,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Trending News",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          "View all",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: -50,
                  left: 0,
                  right: 0,
                  child: SizedBox(
                    width: double.infinity,
                    height: 139,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: TradingDetailsService.myTradingDetails.length,
                      itemBuilder: (context, index) {
                        return TradingNewsWidget(
                          pathImage: TradingDetailsService
                              .myTradingDetails[index].pathImage
                              .toString(),
                          titleNews: TradingDetailsService
                              .myTradingDetails[index].title
                              .toString(),
                          logoChanel: TradingDetailsService
                              .myTradingDetails[index].pathLogoChanel
                              .toString(),
                          nameChanel: TradingDetailsService
                              .myTradingDetails[index].nameChanel
                              .toString(),
                          dateNews: TradingDetailsService
                              .myTradingDetails[index].dateNews
                              .toString(),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Categories",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "View all",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  final isSelected = currentIndex == index;
                  return TextButton(
                    onPressed: () {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                    child: Column(
                      children: [
                        Text(
                          categories[index],
                          style: TextStyle(
                            color: isSelected ? Colors.redAccent : Colors.black,
                            fontSize: 16,
                            fontWeight: isSelected
                                ? FontWeight.w600
                                : FontWeight.normal,
                          ),
                        ),
                        const SizedBox(height: 10),
                        if (isSelected)
                          Container(
                            height: 2.5,
                            width: 60, // يمكنك تعديله حسب طول النص
                            color: Colors.redAccent,
                          ),
                      ],
                    ),
                  );
                },
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: TradingDetailsService.myTradingDetails.length,
              itemBuilder: (context, index) {
                return TopNewsWidget(
                  pathImage: TradingDetailsService
                      .myTradingDetails[index].pathImage
                      .toString(),
                  titleNews: TradingDetailsService.myTradingDetails[index].title
                      .toString(),
                  logoChanel: TradingDetailsService
                      .myTradingDetails[index].pathLogoChanel
                      .toString(),
                  nameChanel: TradingDetailsService
                      .myTradingDetails[index].nameChanel
                      .toString(),
                  dateNews: TradingDetailsService
                      .myTradingDetails[index].dateNews
                      .toString(),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
