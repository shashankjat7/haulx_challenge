import 'package:flutter/material.dart';
import 'package:haulx_challenge/Constants/custom_colors.dart';
import 'package:haulx_challenge/Modules/LoadDetails/models/order_details_model.dart';

class OrderHelpers {
  String orderStatusString(OrderStatus status) {
    switch (status) {
      case OrderStatus.pending:
        {
          return 'Pending';
        }
      case OrderStatus.quoted:
        {
          return 'Quoted';
        }
      case OrderStatus.scheduled:
        {
          return 'Scheduled';
        }
      case OrderStatus.inProgress:
        {
          return 'In Progress';
        }
      case OrderStatus.pickUp:
        {
          return 'Pick Up';
        }
      case OrderStatus.inTransit:
        {
          return 'In-Transit';
        }
      case OrderStatus.atDropoff:
        {
          return 'At Dropoff';
        }
      case OrderStatus.delivered:
        {
          return 'Delivered';
        }
      default:
        {
          return 'Pending';
        }
    }
  }

  Color orderStatusColor(OrderStatus status) {
    switch (status) {
      case OrderStatus.pending:
        {
          return Colors.blueAccent;
        }
      case OrderStatus.inProgress:
        {
          return Colors.green;
        }
      default:
        {
          return Colors.yellow;
        }
    }
  }

  List<Widget> loadStatusLineWidgets(OrderModel order) {
    List<OrderStatus> orderStatuses = [
      OrderStatus.pending,
      OrderStatus.quoted,
      OrderStatus.scheduled,
      OrderStatus.inProgress,
      OrderStatus.pickUp,
      OrderStatus.inTransit,
      OrderStatus.atDropoff,
      OrderStatus.delivered,
    ];
    List<Widget> widgetList = [];
    int i = 0;
    for (i = 0; i < 8; i++) {
      if (i < order.statusInt) {
        widgetList.add(SizedBox(
          width: i == 0 || i == 7 ? 70 : 100,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: i != 0
                        ? const Divider(
                            thickness: 2,
                            color: CustomColors.color1,
                          )
                        : Container(),
                  ),
                  const Expanded(
                      child: Icon(
                    Icons.check_circle,
                    color: CustomColors.color1,
                  )),
                  Expanded(
                    child: i != 7
                        ? const Divider(
                            thickness: 2,
                            color: CustomColors.color1,
                          )
                        : Container(),
                  ),
                ],
              ),
              Text(
                orderStatusString(orderStatuses[i]),
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: CustomColors.color1,
                ),
              ),
            ],
          ),
        ));
      } else if (i == order.statusInt) {
        widgetList.add(SizedBox(
          width: i == 0 || i == 7 ? 70 : 100,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: i != 0
                        ? const Divider(
                            thickness: 2,
                            color: CustomColors.color1,
                          )
                        : Container(),
                  ),
                  const Expanded(
                      child: Icon(
                    Icons.circle,
                    color: Colors.green,
                  )),
                  Expanded(
                    child: i != 7
                        ? const Divider(
                            thickness: 2,
                            color: CustomColors.color2,
                          )
                        : Container(),
                  ),
                ],
              ),
              Text(
                orderStatusString(orderStatuses[i]),
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
            ],
          ),
        ));
      } else {
        widgetList.add(SizedBox(
          width: i == 0 || i == 7 ? 70 : 100,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: i != 0
                        ? const Divider(
                            thickness: 2,
                            color: CustomColors.color2,
                          )
                        : Container(),
                  ),
                  const Expanded(
                      child: Icon(
                    Icons.circle,
                    color: CustomColors.color2,
                  )),
                  Expanded(
                    child: i != 7
                        ? const Divider(
                            thickness: 2,
                            color: CustomColors.color2,
                          )
                        : Container(),
                  ),
                ],
              ),
              Text(
                orderStatusString(orderStatuses[i]),
                style: const TextStyle(
                  fontSize: 12,
                  color: CustomColors.color2,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ));
      }
    }
    return widgetList;
  }
}
