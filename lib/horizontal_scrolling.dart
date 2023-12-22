import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class HorizontalScrolling extends StatelessWidget {
  const HorizontalScrolling({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 32.0),
      color: const Color.fromRGBO(245, 245, 245, 1.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Icon(Icons.favorite_border),
            alignment: Alignment.topRight,
            margin: const EdgeInsets.symmetric(horizontal: 16.0),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Image.network(
                    'https://image.istarbucks.co.kr/upload/store/skuimg/2021/04/[94]_20210430103337006.jpg',
                    height: 70,
                    width: 70,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                const Expanded(
                  flex: 2,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '카페 아메리카노',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                          ),
                        ),
                        Text(
                          'HOT | Tall',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ]),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          LinearPercentIndicator(
            padding: EdgeInsets.zero,
            backgroundColor: Colors.grey,
            lineHeight: 1,
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // 상품 정보를 나타내는 텍스트들을 추가
                Row(children: [
                  Icon(Icons.location_on_outlined),
                  Text("가재울뉴타운"),
                ]),
                Container(
                  height: 23,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.black,
                  ),
                  child: Text(
                    "바로 주문하기",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
