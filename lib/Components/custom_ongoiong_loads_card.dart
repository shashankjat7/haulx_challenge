import 'package:flutter/material.dart';
import 'package:haulx_challenge/Constants/custom_colors.dart';
import 'package:haulx_challenge/Helpers/order_helpers.dart';
import 'package:haulx_challenge/Modules/LoadDetails/models/order_details_model.dart';
import 'package:haulx_challenge/Modules/LoadDetails/views/load_details_view.dart';

class CustomOngoingLoadsCard extends StatelessWidget {
  final OrderModel order;
  const CustomOngoingLoadsCard({required this.order, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      elevation: 2,
      borderRadius: const BorderRadius.all(Radius.circular(20)),
      child: InkWell(
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => LoadDetailsView(order: order),
            ),
          );
        },
        child: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    order.price != null ? order.price! : 'Price Pending',
                    style: TextStyle(
                      fontSize: order.price != null ? 14 : 12,
                      color: CustomColors.color1,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: OrderHelpers().orderStatusColor(order.orderStatus),
                      borderRadius: const BorderRadius.all(Radius.circular(100)),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    child: Text(
                      OrderHelpers().orderStatusString(order.orderStatus),
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.place,
                          color: CustomColors.color1,
                        ),
                        Flexible(
                          child: VerticalDivider(
                            thickness: 2,
                            color: CustomColors.color1,
                          ),
                        ),
                        Icon(
                          Icons.flag,
                          color: CustomColors.color1,
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          order.pickupLocation,
                          style: const TextStyle(
                            fontSize: 14,
                            color: CustomColors.color1,
                            fontWeight: FontWeight.w400,
                            // fontFamily: 'Lato',
                          ),
                        ),
                        Text(
                          order.pickUpDate,
                          style: const TextStyle(
                            fontSize: 12,
                            color: CustomColors.color2,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          order.dropLocation,
                          style: const TextStyle(
                            fontSize: 14,
                            color: CustomColors.color1,
                            fontWeight: FontWeight.w400,
                            // fontFamily: 'Lato',
                          ),
                        ),
                        Text(
                          order.dropDate != null ? order.dropDate! : 'To be determined',
                          style: const TextStyle(
                            fontSize: 12,
                            color: CustomColors.color2,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '${order.loadQuantity} ${order.loadQuantityUnit} • ${order.materialType} • ${order.preferredVehicle}',
                    style: const TextStyle(
                      color: CustomColors.color1,
                      fontSize: 12,
                    ),
                  ),
                  IconButton(
                    padding: EdgeInsets.zero,
                    constraints: BoxConstraints(),
                    splashRadius: 20,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoadDetailsView(order: order),
                        ),
                      );
                    },
                    icon: const Icon(
                      Icons.arrow_forward,
                      color: CustomColors.color2,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
