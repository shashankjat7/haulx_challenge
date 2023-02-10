import 'package:flutter/material.dart';
import 'package:haulx_challenge/Components/custom_detail_row.dart';
import 'package:haulx_challenge/Constants/custom_colors.dart';
import 'package:haulx_challenge/Modules/LoadDetails/models/order_details_model.dart';

class CustomOrderDetailCard extends StatelessWidget {
  final OrderModel order;
  const CustomOrderDetailCard({required this.order, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 2,
      color: Colors.white,
      borderRadius: const BorderRadius.all(Radius.circular(10)),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Pickup Location',
                      style: TextStyle(
                        color: CustomColors.color2,
                      ),
                    ),
                    Text(
                      order.pickupLocation,
                      style: const TextStyle(
                        color: CustomColors.color1,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Drop Location',
                      style: TextStyle(
                        color: CustomColors.color2,
                      ),
                    ),
                    Text(
                      order.dropLocation,
                      style: const TextStyle(
                        color: CustomColors.color1,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                const Icon(
                  Icons.local_shipping_outlined,
                  size: 100,
                  color: Colors.indigo,
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: CustomDetailRow(
                title: 'Order ID',
                value: order.orderId,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: CustomDetailRow(
                title: 'Pickup Date',
                value: order.pickUpDate,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: CustomDetailRow(
                title: 'Preferred Vehicle',
                value: order.preferredVehicle,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: CustomDetailRow(
                title: 'Quantity of Load',
                value: '${order.loadQuantity} ${order.loadQuantityUnit}',
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: CustomDetailRow(
                title: 'Material Type',
                value: order.materialType,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
