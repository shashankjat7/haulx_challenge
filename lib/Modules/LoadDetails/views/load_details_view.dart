import 'package:flutter/material.dart';
import 'package:haulx_challenge/Components/custom_fleet_operator_card.dart';
import 'package:haulx_challenge/Components/custom_load_status_card.dart';
import 'package:haulx_challenge/Components/custom_order_detail_card.dart';
import 'package:haulx_challenge/Components/custom_truck_small_card.dart';
import 'package:haulx_challenge/Constants/custom_colors.dart';
import 'package:haulx_challenge/Constants/route_names.dart';
import 'package:haulx_challenge/Modules/LoadDetails/models/order_details_model.dart';
import 'package:haulx_challenge/Modules/LoadDetails/views/truck_details_view.dart';

class LoadDetailsView extends StatelessWidget {
  static const routeName = RouteNames.loadDetailViewRouteName;
  final OrderModel order;
  const LoadDetailsView({required this.order, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.color3,
      appBar: AppBar(
        title: Text('Order: #${order.orderId}'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          )
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 20),
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: CustomOrderDetailCard(order: order),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: CustomLoadStatusCard(
              order: order,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: CustomFleetOperatorCard(operator: order.fleetOperator),
          ),
          CustomTruckSmallCard(
            truck: order.truck,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TruckDetailsView(order: order),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
