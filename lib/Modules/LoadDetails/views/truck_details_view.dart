import 'package:flutter/material.dart';
import 'package:haulx_challenge/Components/custom_fleet_operator_card.dart';
import 'package:haulx_challenge/Components/custom_load_status_card.dart';
import 'package:haulx_challenge/Components/custom_truck_detail_card.dart';
import 'package:haulx_challenge/Modules/LoadDetails/models/order_details_model.dart';

class TruckDetailsView extends StatelessWidget {
  final OrderModel order;
  const TruckDetailsView({required this.order, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Truck Details'),
      ),
      body: ListView(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: CustomFleetOperatorCard(operator: order.fleetOperator),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: CustomTruckDetailCard(truck: order.truck),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: CustomLoadStatusCard(
              order: order,
            ),
          ),
        ],
      ),
    );
  }
}
