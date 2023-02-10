import 'package:flutter/material.dart';
import 'package:haulx_challenge/Constants/custom_colors.dart';
import 'package:haulx_challenge/Modules/LoadDetails/models/truck_model.dart';

class CustomTruckSmallCard extends StatelessWidget {
  final TruckModel truck;
  final Function onTap;
  const CustomTruckSmallCard({required this.truck, required this.onTap, Key? key}) : super(key: key);

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
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(color: CustomColors.color2.withOpacity(0.2)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Text(
                              'Truck No: ',
                              style: TextStyle(
                                color: CustomColors.color2,
                              ),
                            ),
                            Text(
                              truck.registrationNumber,
                              style: const TextStyle(
                                color: CustomColors.color1,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const Text(
                              'Driver No: ',
                              style: TextStyle(
                                color: CustomColors.color2,
                              ),
                            ),
                            Text(
                              truck.driverPhoneNumber,
                              style: const TextStyle(
                                color: CustomColors.color1,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: const [
                            Icon(
                              Icons.arrow_right,
                              color: Colors.green,
                            ),
                            Text(
                              'Delivered',
                              style: TextStyle(
                                color: Colors.green,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    ElevatedButton(
                      onPressed: () => onTap(),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
                      ),
                      child: const Text(
                        'Live Status',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
