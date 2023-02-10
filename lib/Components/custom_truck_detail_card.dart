import 'package:flutter/material.dart';
import 'package:haulx_challenge/Components/custom_detail_row.dart';
import 'package:haulx_challenge/Modules/LoadDetails/models/truck_model.dart';

class CustomTruckDetailCard extends StatelessWidget {
  final TruckModel truck;
  const CustomTruckDetailCard({required this.truck, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                  'Truck and Driver',
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
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: CustomDetailRow(
                title: 'Truck ID',
                value: truck.truckId,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: CustomDetailRow(
                title: 'Truck Registration Number',
                value: truck.registrationNumber,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: CustomDetailRow(
                title: 'Driver Name',
                value: truck.driverName,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: CustomDetailRow(
                title: 'Driver Phone Number',
                value: truck.driverPhoneNumber,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
