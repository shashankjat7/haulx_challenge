import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:haulx_challenge/Modules/HomeScreen/SubModules/MyLoadsPage/views/ongoing_loads_page.dart';
import 'package:haulx_challenge/Modules/HomeScreen/SubModules/MyLoadsPage/views/past_loads_page.dart';
import 'package:haulx_challenge/Modules/LoadDetails/models/order_details_model.dart';

class MyLoadsPage extends StatelessWidget {
  final List<OrderModel> orderList;
  const MyLoadsPage({required this.orderList, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('My Loads'),
          bottom: const TabBar(
            tabs: [
              Tab(
                text: 'Ongoing',
              ),
              Tab(
                text: 'Past',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            OngoingLoadsPage(
              ongoingLoadList: orderList,
            ),
            const PastLoadsPage(),
          ],
        ),
      ),
    );
  }
}
