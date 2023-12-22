import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

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
                      padding: EdgeInsets.all(16.0),
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
                                      Text(' 5 ', style: TextStyle(color: Colors.grey)),
                                      Icon(Icons.star, color: Colors.grey),
                                      Text(' until Green Level', style: TextStyle(color: Colors.grey)),
                                    ],
                                  ),
                                  SizedBox(height: 10),
                                  LinearPercentIndicator(
                                    padding: EdgeInsets.zero,
                                    backgroundColor: Colors.grey.shade200,
                                    lineHeight: 10,
                                    width: MediaQuery.of(context).size.width * 0.6,
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.9,
                                child: const Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                  } else {
                    return Container(); // 그 외의 경우 빈 컨테이너 반환
                  }
                },
                childCount: 20, // 아이템 개수를 적절하게 조절
              ),
            ),
          )
        ],
      ),
    );
  }
}
