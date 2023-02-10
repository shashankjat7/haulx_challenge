import 'package:flutter/material.dart';
import 'package:haulx_challenge/Helpers/order_helpers.dart';
import 'package:haulx_challenge/Modules/LoadDetails/models/order_details_model.dart';

class CustomLoadStatusCard extends StatelessWidget {
  final OrderModel order;
  const CustomLoadStatusCard({required this.order, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final items = OrderHelpers().loadStatusLineWidgets(order);
    return Material(
      elevation: 2,
      borderRadius: const BorderRadius.all(Radius.circular(10)),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 3,
                  height: 16,
                  decoration: const BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                const Text(
                  'Load Status',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 60,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: items,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
