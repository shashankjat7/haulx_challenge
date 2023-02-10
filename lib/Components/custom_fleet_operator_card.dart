import 'package:flutter/material.dart';
import 'package:haulx_challenge/Components/custom_detail_row.dart';
import 'package:haulx_challenge/Modules/LoadDetails/models/fleet_operator_model.dart';

class CustomFleetOperatorCard extends StatelessWidget {
  final FleetOperatorModel operator;
  const CustomFleetOperatorCard({required this.operator, Key? key}) : super(key: key);

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
                  'Fleet Operator',
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
                title: 'Company Name',
                value: operator.companyName,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: CustomDetailRow(
                title: 'Operator Name',
                value: operator.operatorName,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: CustomDetailRow(
                title: 'Phone Number',
                value: operator.phoneNumber,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
