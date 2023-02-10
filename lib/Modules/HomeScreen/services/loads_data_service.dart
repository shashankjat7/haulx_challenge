import 'package:haulx_challenge/Modules/LoadDetails/models/fleet_operator_model.dart';
import 'package:haulx_challenge/Modules/LoadDetails/models/order_details_model.dart';
import 'package:haulx_challenge/Modules/LoadDetails/models/truck_model.dart';

class LoadsDataService {
  List<OrderModel> getDummyData() {
    return [
      OrderModel(
        orderId: '52',
        orderStatus: OrderStatus.pending,
        statusInt: 0,
        pickupLocation: 'Delhi Division, Delhi',
        dropLocation: 'Delhi Division, Delhi',
        pickUpDate: '31-Jan-23',
        loadQuantity: 25.0,
        loadQuantityUnit: 'Tonne',
        materialType: 'Steel',
        dropDate: null,
        price: null,
        preferredVehicle: 'Container',
        truck: TruckModel(
          truckId: '35',
          registrationNumber: 'W34567',
          driverName: 'Sanchit Narang',
          driverPhoneNumber: '8595114164',
        ),
        fleetOperator: FleetOperatorModel(
          companyName: 'SN Logistics',
          operatorName: 'Sanchit Nar',
          phoneNumber: '8595114160',
        ),
      ),
      OrderModel(
        orderId: '53',
        orderStatus: OrderStatus.inProgress,
        statusInt: 3,
        pickupLocation: 'Thane Taluka, Maharastra',
        dropLocation: 'North West Delhi, Delhi',
        pickUpDate: '26-Jan-23',
        loadQuantity: 20.0,
        loadQuantityUnit: 'Tonne',
        materialType: 'Steel',
        dropDate: null,
        price: '₹ 2000.0 Per Tonne',
        preferredVehicle: 'Trailer',
        truck: TruckModel(
          truckId: '35',
          registrationNumber: 'W34567',
          driverName: 'Sanchit Narang',
          driverPhoneNumber: '8595114164',
        ),
        fleetOperator: FleetOperatorModel(
          companyName: 'SN Logistics',
          operatorName: 'Sanchit Nar',
          phoneNumber: '8595114160',
        ),
      ),
      OrderModel(
        orderId: '54',
        orderStatus: OrderStatus.pending,
        statusInt: 0,
        pickupLocation: 'Sri Ganganagar, Rajasthan',
        dropLocation: 'Jaipur, Rajasthan',
        pickUpDate: '19-Jan-23',
        loadQuantity: 50.0,
        loadQuantityUnit: 'Tonne',
        materialType: 'Furniture',
        dropDate: null,
        price: null,
        preferredVehicle: 'Container',
        truck: TruckModel(
          truckId: '35',
          registrationNumber: 'W34567',
          driverName: 'Sanchit Narang',
          driverPhoneNumber: '8595114164',
        ),
        fleetOperator: FleetOperatorModel(
          companyName: 'SN Logistics',
          operatorName: 'Sanchit Nar',
          phoneNumber: '8595114160',
        ),
      ),
      OrderModel(
        orderId: '55',
        orderStatus: OrderStatus.pending,
        statusInt: 0,
        pickupLocation: 'Gandhinagar, Gujarat',
        dropLocation: 'Tiruchirappalli, Tamilanadu',
        pickUpDate: '2-Feb-23',
        loadQuantity: 30.0,
        loadQuantityUnit: 'Tonne',
        materialType: 'Steel',
        dropDate: null,
        price: null,
        preferredVehicle: 'Trailer',
        truck: TruckModel(
          truckId: '35',
          registrationNumber: 'W34567',
          driverName: 'Sanchit Narang',
          driverPhoneNumber: '8595114164',
        ),
        fleetOperator: FleetOperatorModel(
          companyName: 'SN Logistics',
          operatorName: 'Sanchit Nar',
          phoneNumber: '8595114160',
        ),
      ),
    ];
  }
}
