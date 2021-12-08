import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:market_kurly_ui/constants.dart';
import 'package:market_kurly_ui/screens/components/custom_actions.dart';
import 'package:market_kurly_ui/screens/home/components/benefit_page.dart';
import 'package:market_kurly_ui/screens/home/components/kurly_page.dart';
import 'package:market_kurly_ui/screens/home/components/new_product_page.dart';
import 'package:market_kurly_ui/screens/home/components/thrifty_shopping_page.dart';
import 'package:market_kurly_ui/theme.dart';

class HomeScreen extends StatelessWidget {
  List<String> categories = ['컬리추천', '신상품', '금주혜택', '알뜰쇼핑'];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: categories.length,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text('Kurly'),
          actions: [
            CustomActions(),
          ],
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(42),
            child: Container(
              decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(width: 0.3, color: Colors.grey),
                  ),
                  color: Colors.white),
              child: TabBar(
                tabs: List.generate(
                  categories.length,
                  (index) => Tab(
                    text: categories[index],
                  ),
                ),
                labelColor: kPrimaryColor,
                unselectedLabelColor: kSecondaryColor,
                labelStyle: textTheme().headline2?.copyWith(
                    color: kPrimaryColor, fontWeight: FontWeight.bold),
                indicator: UnderlineTabIndicator(
                  borderSide: BorderSide(width: 2, color: kPrimaryColor),
                ),
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: [
            KurlyPage(),
            NewProductPage(),
            BenefitPage(),
            ThriftyShoppingPage(),
          ],
        ),
      ),
    );
  }
}
