import 'package:flutter/material.dart';
import 'package:haulx_challenge/Components/custom_ongoiong_loads_card.dart';
import 'package:haulx_challenge/Modules/LoadDetails/models/order_details_model.dart';

class OngoingLoadsPage extends StatelessWidget {
  final List<OrderModel> ongoingLoadList;
  const OngoingLoadsPage({required this.ongoingLoadList, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: ongoingLoadList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: CustomOngoingLoadsCard(order: ongoingLoadList[index]),
          );
        });
  }
}
