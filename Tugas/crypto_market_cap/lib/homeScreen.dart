import 'dart:async';
import 'package:project_tpm/widgets/button_widget.dart';
import 'package:project_tpm/widgets/design/coin_card.dart';
import 'package:flutter/material.dart';
import 'widgets/top_map.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'models/coins.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int rate = 1;
  late String imageUrl;
  Future<List<Coin>> fetchCoin() async {
    coinList = [];
    final response = await http.get(Uri.parse(
        'https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=100&page=1&sparkline=false&price_change_percentage=1h'));
    if (response.statusCode == 200) {
      List<dynamic> values = [];
      values = json.decode(response.body);
      if (values.length > 0) {
        for (int i = 0; i < values.length; i++) {
          if (values[i] != null) {
            Map<String, dynamic> map = values[i];
            coinList.add(Coin.fromJson(map));
          }
        }
        setState(() {
          coinList;
        });
      }
      return coinList;
    } else {
      throw Exception("Failed to load, try again");
    }
  }

  @override
  void initState() {
    fetchCoin();
    // Timer.periodic(const Duration(seconds: 10), ((timer) => fetchCoin()));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverToBoxAdapter(
              child: TotalBalance(),
            ),
            SliverToBoxAdapter(
                child: SizedBox(
              height: 75,
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ButtonWidget(
                      active: true,
                      onTap: () {
                        setState(() {
                          rate = 14500;
                        });
                      },
                      text: 'IDR'),
                  ButtonWidget(
                      active: true,
                      onTap: () {
                        setState(() {
                          rate = 1;
                        });
                      },
                      text: 'USD'),
                  ButtonWidget(
                      active: true,
                      onTap: () {
                        setState(() {
                          rate = 138;
                        });
                      },
                      text: 'JPY'),
                ],
              ),
            )),
            SliverToBoxAdapter(
              child: SizedBox(
                width: double.infinity,
                height: MediaQuery.of(context).size.height / 1.3,
                child: ListView.builder(
                    itemCount: coinList.length,
                    itemBuilder: (context, index) {
                      int queryIndex = coinList[index].image.indexOf("?");
                      return SingleChildScrollView(
                        child: CoinCard(
                            change: coinList[index].change.toDouble(),
                            changePercentage:
                                coinList[index].changePercentage.toDouble(),
                            image:
                                coinList[index].image.substring(0, queryIndex),
                            name: coinList[index].name,
                            price: coinList[index].price.toDouble() * rate,
                            rank: coinList[index].rank.toInt(),
                            symbol: coinList[index].symbol),
                      );
                    }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
