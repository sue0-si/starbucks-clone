import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:starbucks_clone/horizontal_scrolling.dart';

import 'bottom_navigation_bar.dart';

class StarbucksHomeScreen extends StatelessWidget {
  const StarbucksHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverSafeArea(
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  if (index == 0) {
                    return Image.asset(
                      './assets/00_banner.png',
                      fit: BoxFit.cover,
                    );
                  } else if (index == 1) {
                    return Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Row(
                                    children: [
                                      Text(' 5 ',
                                          style: TextStyle(color: Colors.grey)),
                                      Icon(Icons.star, color: Colors.grey),
                                      Text(' until Green Level',
                                          style: TextStyle(color: Colors.grey)),
                                    ],
                                  ),
                                  SizedBox(height: 10),
                                  LinearPercentIndicator(
                                    padding: EdgeInsets.zero,
                                    backgroundColor: Colors.grey.shade200,
                                    lineHeight: 10,
                                    width:
                                        MediaQuery.of(context).size.width * 0.6,
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.9,
                                child: const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Icon(Icons.mail),
                                        Text(' What\'s New  '),
                                        Icon(Icons.confirmation_number_sharp),
                                        Text(' Coupon '),
                                      ],
                                    ),
                                    SizedBox(
                                      child: Icon(Icons.notifications),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  } else if (index == 2) {
                    return Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Image.asset(
                        './assets/01_01_2023_winter_e-frequency.png',
                        fit: BoxFit.cover,
                      ),
                    );
                  } else if (index == 3) {
                    return Image.asset(
                      'assets/02_01_siren_order.png',
                      fit: BoxFit.cover,
                    );
                  } else if (index == 4) {
                    return const Padding(
                      padding: EdgeInsets.all(24.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Quick Order',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '최근 주문',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    );
                  } else if (index == 5) {

                    return HorizontalScrolling();
                    // return Padding(
                    //   padding: const EdgeInsets.all(24.0),
                    //   child: SizedBox(
                    //     height: 100,
                    //     width: 200,
                    //     child: Row(
                    //         children: [
                    //           Card(
                    //             child: Column(
                    //               children: [
                    //                 Text('카페 아메리카노'),
                    //                 Text('HOT | Tall'),
                    //                 SizedBox(height: 20,),
                    //                 LinearPercentIndicator(
                    //                   width: 50,
                    //                   lineHeight: 1,
                    //                   backgroundColor: Colors.grey,
                    //                 ),
                    //               ],
                    //             ),
                    //           )
                    //         ],
                    //       ),
                    //   ),
                    // );
                  } else if (index == 6) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        'assets/03_01_chrismas_event.png',
                        fit: BoxFit.cover,
                      ),
                    );
                  } else if (index == 7) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              // 그림자 색상 및 투명도 설정
                              blurRadius: 100,
                              // 그림자의 흐림 정도
                              offset: const Offset(1, 4), // 그림자의 위치 (수평, 수직)
                            )
                          ],
                        ),
                        child: Column(
                          children: [
                            Image.asset('assets/05_01_card.png'),
                            const SizedBox(height: 10),
                            Image.asset('assets/05_02_card.png'),
                          ],
                        ),
                      ),
                    );
                  } else {
                    return Container(); // 그 외의 경우 빈 컨테이너 반환
                  }
                },
                childCount: 20, // 아이템 개수를 적절하게 조절
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.two_wheeler, color: Colors.white),
        backgroundColor: Colors.green,
      ),
      bottomNavigationBar: const BottomNavigationBarWidget(),
    );
  }
}
