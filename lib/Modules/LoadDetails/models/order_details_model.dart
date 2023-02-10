import 'package:haulx_challenge/Modules/LoadDetails/models/fleet_operator_model.dart';
import 'package:haulx_challenge/Modules/LoadDetails/models/truck_model.dart';

enum OrderStatus { pending, quoted, scheduled, inProgress, pickUp, inTransit, atDropoff, delivered }

class OrderModel {
  final String orderId;
  final OrderStatus orderStatus;
  final int statusInt;
  String? price;
  final String pickupLocation;
  final String dropLocation;
  final String pickUpDate;
  String? dropDate;
  final double loadQuantity;
  final String loadQuantityUnit;
  final String materialType;
  final String preferredVehicle;
  final TruckModel truck;
  final FleetOperatorModel fleetOperator;

  OrderModel({
    required this.orderId,
    required this.orderStatus,
    required this.statusInt,
    this.price,
    required this.pickupLocation,
    required this.dropLocation,
    required this.pickUpDate,
    this.dropDate,
    required this.loadQuantity,
    required this.loadQuantityUnit,
    required this.materialType,
    required this.preferredVehicle,
    required this.truck,
    required this.fleetOperator,
  });
}
