// // import 'package:flutter/material.dart';

// // void main() {
// //   runApp(MyApp());
// // }

// // class MyApp extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       home: DefaultTabController(
// //         length: 2,
// //         child: Screen1(),
// //       ),
// //     );
// //   }
// // }

// // class Screen1 extends StatefulWidget {
// //   @override
// //   _Screen1State createState() => _Screen1State();
// // }

// // class _Screen1State extends State<Screen1> {
// //   List<Vehicle> bikes = [];
// //   List<Vehicle> cars = [];

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text("Vehicle Details"),
// //         bottom: TabBar(
// //           indicatorColor: Colors.pink,
// //           tabs: [
// //             Tab(text: "Bike"),
// //             Tab(text: "Car"),
// //           ],
// //         ),
// //       ),
// //       body: TabBarView(
// //         children: [
// //           VehicleList(vehicles: bikes),
// //           VehicleList(vehicles: cars),
// //         ],
// //       ),
// //       bottomNavigationBar: Container(
// //         color: Colors.deepOrange,
// //         padding: EdgeInsets.all(10.0),
// //         child: Row(
// //           mainAxisAlignment: MainAxisAlignment.center,
// //           children: [
// //             Text("Add Vehicle",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,),),
// //             IconButton(
// //               color: Colors.white,
// //               icon: Icon(Icons.add),
// //               onPressed: () {
// //                 Navigator.push(
// //                   context,
// //                   MaterialPageRoute(
// //                     builder: (context) => Screen2(onSubmit: _addVehicle),
// //                   ),
// //                 );
// //               },
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }

// //   void _addVehicle(Vehicle vehicle) {
// //     setState(() {
// //       if (vehicle.vehicleType == "Bike") {
// //         bikes.add(vehicle);
// //       } else if (vehicle.vehicleType == "Car") {
// //         cars.add(vehicle);
// //       }
// //     });
// //     Navigator.pop(context);
// //   }
// // }

// // class Screen2 extends StatefulWidget {
// //   final Function(Vehicle) onSubmit;

// //   Screen2({required this.onSubmit});

// //   @override
// //   _Screen2State createState() => _Screen2State();
// // }

// // class _Screen2State extends State<Screen2> {
// //   final _formKey = GlobalKey<FormState>();
// //   final TextEditingController vehicleNumberController = TextEditingController();
// //   String? selectedBrand;
// //   String? selectedVehicleType;
// //   String? selectedFuelType;

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text("Vehicle Form"),
// //       ),
// //       body: Padding(
// //         padding: const EdgeInsets.all(16.0),
// //         child: Form(
// //           key: _formKey,
// //           child: Column(
// //             crossAxisAlignment: CrossAxisAlignment.start,
// //             children: [
// //               TextFormField(
// //                 controller: vehicleNumberController,
// //                 decoration: InputDecoration(
// //                   hintText: 'Vehicle Number',
// //                   border: OutlineInputBorder(),
// //                 ),
// //                 validator: (value) {
// //                   if (value == null || value.isEmpty) {
// //                     return 'Please enter a vehicle number';
// //                   }
// //                   return null;
// //                 },
// //               ),
// //               SizedBox(height: 8),
// //               DropdownButtonFormField<String>(
// //                 value: selectedBrand,
// //                 onChanged: (value) {
// //                   setState(() {
// //                     selectedBrand = value;
// //                   });
// //                 },
// //                 items: ["Brand1", "Brand2"].map<DropdownMenuItem<String>>((String value) {
// //                   return DropdownMenuItem<String>(
// //                     value: value,
// //                     child: Text(value),
// //                   );
// //                 }).toList(),
// //                 decoration: InputDecoration(
// //                   hintText: 'Select Brand',
// //                   border: OutlineInputBorder(),
// //                 ),
// //               ),
// //               SizedBox(height: 8),
// //               DropdownButtonFormField<String>(
// //                 value: selectedVehicleType,
// //                 onChanged: (value) {
// //                   setState(() {
// //                     selectedVehicleType = value;
// //                   });
// //                 },
// //                 items: ["Bike", "Car"].map<DropdownMenuItem<String>>((String value) {
// //                   return DropdownMenuItem<String>(
// //                     value: value,
// //                     child: Text(value),
// //                   );
// //                 }).toList(),
// //                 decoration: InputDecoration(
// //                   hintText: 'Select Vehicle Type',
// //                   border: OutlineInputBorder(),
// //                 ),
// //               ),
// //               SizedBox(height: 8),
// //               DropdownButtonFormField<String>(
// //                 value: selectedFuelType,
// //                 onChanged: (value) {
// //                   setState(() {
// //                     selectedFuelType = value;
// //                   });
// //                 },
// //                 items: ["Petrol", "Diesel"].map<DropdownMenuItem<String>>((String value) {
// //                   return DropdownMenuItem<String>(
// //                     value: value,
// //                     child: Text(value),
// //                   );
// //                 }).toList(),
// //                 decoration: InputDecoration(
// //                   hintText: 'Select Fuel Type',
// //                   border: OutlineInputBorder(),
// //                 ),
// //               ),
// //               SizedBox(height: 8),
// //               SizedBox(height: 16),
// //               ElevatedButton(
// //                 onPressed: () {
// //                   if (_formKey.currentState!.validate()) {
// //                     Vehicle newVehicle = Vehicle(
// //                       vehicleNumber: vehicleNumberController.text,
// //                       brand: selectedBrand,
// //                       vehicleType: selectedVehicleType,
// //                       fuelType: selectedFuelType,
// //                     );
// //                     widget.onSubmit(newVehicle);
// //                   }
// //                 },
// //                 child: Text('Submit'),
// //               ),
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }

// // class VehicleList extends StatelessWidget {
// //   final List<Vehicle> vehicles;

// //   VehicleList({required this.vehicles});

// //   @override
// //   Widget build(BuildContext context) {
// //     return Column(
// //       mainAxisAlignment: MainAxisAlignment.center,
// //       children: [
// //         Visibility(
// //           visible: vehicles.isNotEmpty,
// //           child: Expanded(
// //             child: ListView.builder(
// //               itemCount: vehicles.length,
// //               itemBuilder: (context, index) {
// //                 return VehicleCard(
// //                   vehicle: vehicles[index],
// //                 );
// //               },
// //             ),
// //           ),
// //           replacement: Text(
// //             "No vehicle added",
// //             style: TextStyle(color: Colors.red),
// //           ),
// //         ),
// //       ],
// //     );
// //   }
// // }

// // class VehicleCard extends StatelessWidget {
// //   final Vehicle vehicle;

// //   VehicleCard({required this.vehicle});

// //   @override
// //   Widget build(BuildContext context) {
// //     return Card(
// //       margin: EdgeInsets.all(8.0),
// //       child: Padding(
// //         padding: const EdgeInsets.all(16.0),
// //         child: Column(
// //           crossAxisAlignment: CrossAxisAlignment.start,
// //           children: [
// //             Text("Vehicle Number: ${vehicle.vehicleNumber}"),
// //             if (vehicle.brand != null) Text("Brand: ${vehicle.brand!}"),
// //             if (vehicle.vehicleType != null) Text("Vehicle Type: ${vehicle.vehicleType!}"),
// //             if (vehicle.fuelType != null) Text("Fuel Type: ${vehicle.fuelType!}"),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }

// // class Vehicle {
// //   final String vehicleNumber;
// //   final String? brand;
// //   final String? vehicleType;
// //   final String? fuelType;

// //   Vehicle({
// //     required this.vehicleNumber,
// //     this.brand,
// //     this.vehicleType,
// //     this.fuelType,
// //   });
// // }
// // import 'package:flutter/material.dart';

// // void main() {
// //   runApp(MyApp());
// // }

// // class MyApp extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       home: DefaultTabController(
// //         length: 2,
// //         child: Screen1(),
// //       ),
// //     );
// //   }
// // }

// // class Screen1 extends StatefulWidget {
// //   @override
// //   _Screen1State createState() => _Screen1State();
// // }

// // class _Screen1State extends State<Screen1> {
// //   List<Vehicle> bikes = [];
// //   List<Vehicle> cars = [];

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: const Text("Vehicle Details"),
// //         bottom: const TabBar(
// //           indicatorSize: TabBarIndicatorSize.tab,
// //           tabs: [
// //             Tab(text: "Bike"),
// //             Tab(text: "Car"),
// //           ],
// //         ),
// //       ),
// //       body: TabBarView(
// //         children: [
// //           VehicleList(vehicles: bikes, onDelete: _deleteVehicle),
// //           VehicleList(vehicles: cars, onDelete: _deleteVehicle),
// //         ],
// //       ),
// //       bottomNavigationBar: Container(
// //         color: Colors.deepOrange,
// //         padding: EdgeInsets.all(10.0),
// //         child: Row(
// //           mainAxisAlignment: MainAxisAlignment.center,
// //           children: [
// //             Text(
// //               "Add Vehicle",
// //               style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
// //             ),
// //             IconButton(
// //               color: Colors.white,
// //               icon: Icon(Icons.add),
// //               onPressed: () {
// //                 Navigator.push(
// //                   context,
// //                   MaterialPageRoute(
// //                     builder: (context) => Screen2(onSubmit: _addVehicle),
// //                   ),
// //                 );
// //               },
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }

// //   void _addVehicle(Vehicle vehicle) {
// //     setState(() {
// //       if (vehicle.vehicleType == "Bike") {
// //         bikes.add(vehicle);
// //       } else if (vehicle.vehicleType == "Car") {
// //         cars.add(vehicle);
// //       }
// //     });
// //     Navigator.pop(context);
// //   }

// //   void _deleteVehicle(int index, String vehicleType) {
// //     setState(() {
// //       if (vehicleType == "Bike") {
// //         bikes.removeAt(index);
// //       } else if (vehicleType == "Car") {
// //         cars.removeAt(index);
// //       }
// //     });
// //   }
// // }

// // class Screen2 extends StatefulWidget {
// //   final Function(Vehicle) onSubmit;

// //   Screen2({required this.onSubmit});

// //   @override
// //   _Screen2State createState() => _Screen2State();
// // }

// // class _Screen2State extends State<Screen2> {
// //   final _formKey = GlobalKey<FormState>();
// //   final TextEditingController vehicleNumberController = TextEditingController();
// //   String? selectedBrand;
// //   String? selectedVehicleType;
// //   String? selectedFuelType;

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text("Vehicle Form"),
// //       ),
// //       body: Padding(
// //         padding: const EdgeInsets.all(16.0),
// //         child: Form(
// //           key: _formKey,
// //           child: Column(
// //             crossAxisAlignment: CrossAxisAlignment.start,
// //             children: [
// //               Text("Vehicle Number"),
// //               TextFormField(
// //                 controller: vehicleNumberController,
// //                 decoration: InputDecoration(
// //                   hintText: 'Vehicle Number',
// //                   border: OutlineInputBorder(),
// //                 ),
// //                 validator: (value) {
// //                   if (value == null || value.isEmpty) {
// //                     return 'Please enter a vehicle number';
// //                   }
// //                   return null;
// //                 },
// //               ),
// //               SizedBox(height: 8),
// //               Text("Brand Name"),
// //               DropdownButtonFormField<String>(
// //                 value: selectedBrand,
// //                 onChanged: (value) {
// //                   setState(() {
// //                     selectedBrand = value;
// //                   });
// //                 },
// //                 items: ["Brand1", "Brand2"].map<DropdownMenuItem<String>>((String value) {
// //                   return DropdownMenuItem<String>(
// //                     value: value,
// //                     child: Text(value),
// //                   );
// //                 }).toList(),
// //                 decoration: const InputDecoration(
// //                   hintText: 'Select Brand',
// //                   border: OutlineInputBorder(),
// //                 ),
// //               ),
// //               const SizedBox(height: 8),
// //               Text("Vehicle type"),
// //               DropdownButtonFormField<String>(
// //                 value: selectedVehicleType,
// //                 onChanged: (value) {
// //                   setState(() {
// //                     selectedVehicleType = value;
// //                   });
// //                 },
// //                 items: ["Bike", "Car"].map<DropdownMenuItem<String>>((String value) {
// //                   return DropdownMenuItem<String>(
// //                     value: value,
// //                     child: Text(value),
// //                   );
// //                 }).toList(),
// //                 decoration: const InputDecoration(
// //                   hintText: 'Select Vehicle Type',
// //                   border: OutlineInputBorder(),
// //                 ),
// //               ),
// //               const SizedBox(height: 8),
// //               Text("Fuel Type"),
// //               DropdownButtonFormField<String>(
// //                 value: selectedFuelType,
// //                 onChanged: (value) {
// //                   setState(() {
// //                     selectedFuelType = value;
// //                   });
// //                 },
// //                 items: ["Petrol", "Diesel"].map<DropdownMenuItem<String>>((String value) {
// //                   return DropdownMenuItem<String>(
// //                     value: value,
// //                     child: Text(value),
// //                   );
// //                 }).toList(),
// //                 decoration: const InputDecoration(
// //                   hintText: 'Select Fuel Type',
// //                   border: OutlineInputBorder(),
// //                 ),
// //               ),
// //               const SizedBox(height: 8),
// //               const SizedBox(height: 16),
// //               ElevatedButton(
// //                 onPressed: () {
// //                   if (_formKey.currentState!.validate()) {
// //                     Vehicle newVehicle = Vehicle(
// //                       vehicleNumber: vehicleNumberController.text,
// //                       brand: selectedBrand,
// //                       vehicleType: selectedVehicleType,
// //                       fuelType: selectedFuelType,
// //                     );
// //                     widget.onSubmit(newVehicle);
// //                   }
// //                 },
// //                 child: Text('Submit'),
// //               ),
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }

// // class VehicleList extends StatelessWidget {
// //   final List<Vehicle> vehicles;
// //   final Function(int, String) onDelete;

// //   VehicleList({required this.vehicles, required this.onDelete});

// //   @override
// //   Widget build(BuildContext context) {
// //     return Column(
// //       mainAxisAlignment: MainAxisAlignment.center,
// //       children: [
// //         Visibility(
// //           visible: vehicles.isNotEmpty,
// //           child: Expanded(
// //             child: ListView.builder(
// //               itemCount: vehicles.length,
// //               itemBuilder: (context, index) {
// //                 return VehicleCard(
// //                   vehicle: vehicles[index],
// //                   onDelete: () {
// //                     onDelete(index, vehicles[index].vehicleType ?? "");
// //                   },
// //                 );
// //               },
// //             ),
// //           ),
// //           replacement: Text(
// //             "No vehicle added",
// //             style: TextStyle(color: Colors.red),
// //           ),
// //         ),
// //       ],
// //     );
// //   }
// // }

// // class VehicleCard extends StatelessWidget {
// //   final Vehicle vehicle;
// //   final VoidCallback onDelete;

// //   VehicleCard({required this.vehicle, required this.onDelete});

// //   @override
// //   Widget build(BuildContext context) {
// //     return Card(
// //       margin: EdgeInsets.all(8.0),
// //       child: Padding(
// //         padding: const EdgeInsets.all(16.0),
// //         child: Column(
// //           crossAxisAlignment: CrossAxisAlignment.start,
// //           children: [
// //             Text("Vehicle Number: ${vehicle.vehicleNumber}"),
// //             if (vehicle.brand != null) Text("Brand: ${vehicle.brand!}"),
// //             if (vehicle.vehicleType != null) Text("Vehicle Type: ${vehicle.vehicleType!}"),
// //             if (vehicle.fuelType != null) Text("Fuel Type: ${vehicle.fuelType!}"),
// //             Align(
// //               alignment: Alignment.topRight,
// //               child: IconButton(
// //                 icon: Icon(Icons.close),
// //                 onPressed: onDelete,
// //               ),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }

// // class Vehicle {
// //   final String vehicleNumber;
// //   final String? brand;
// //   final String? vehicleType;
// //   final String? fuelType;

// //   Vehicle({
// //     required this.vehicleNumber,
// //     this.brand,
// //     this.vehicleType,
// //     this.fuelType,
// //   });
// // }

// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(
//         primaryColor: Colors.deepPurple,
//         textTheme: TextTheme(
//           bodyText2: TextStyle(color: Colors.black),
//         ),
//       ),
//       home: DefaultTabController(
//         length: 2,
//         child: Screen1(),
//       ),
//     );
//   }
// }

// class Screen1 extends StatefulWidget {
//   @override
//   _Screen1State createState() => _Screen1State();
// }

// class _Screen1State extends State<Screen1> {
//   List<Vehicle> bikes = [];
//   List<Vehicle> cars = [];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Vehicle Details"),
//         bottom: const TabBar(
//           indicatorSize: TabBarIndicatorSize.tab,
//           tabs: [
//             Tab(text: "Bike"),
//             Tab(text: "Car"),
//           ],
//         ),
//       ),
//       body: TabBarView(
//         children: [
//           VehicleList(vehicles: bikes, onDelete: _deleteVehicle),
//           VehicleList(vehicles: cars, onDelete: _deleteVehicle),
//         ],
//       ),
//       bottomNavigationBar: Container(
//         color: Theme.of(context).primaryColor,
//         padding: EdgeInsets.all(10.0),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               "Add Vehicle",
//               style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
//             ),
//             IconButton(
//               color: Colors.white,
//               icon: Icon(Icons.add),
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => Screen2(onSubmit: _addVehicle),
//                   ),
//                 );
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   void _addVehicle(Vehicle vehicle) {
//     setState(() {
//       if (vehicle.vehicleType == "Bike") {
//         bikes.add(vehicle);
//       } else if (vehicle.vehicleType == "Car") {
//         cars.add(vehicle);
//       }
//     });
//     Navigator.pop(context);
//   }

//   void _deleteVehicle(int index, String vehicleType) {
//     setState(() {
//       if (vehicleType == "Bike") {
//         bikes.removeAt(index);
//       } else if (vehicleType == "Car") {
//         cars.removeAt(index);
//       }
//     });
//   }
// }

// class Screen2 extends StatefulWidget {
//   final Function(Vehicle) onSubmit;

//   Screen2({required this.onSubmit});

//   @override
//   _Screen2State createState() => _Screen2State();
// }

// class _Screen2State extends State<Screen2> {
//   final _formKey = GlobalKey<FormState>();
//   final TextEditingController vehicleNumberController = TextEditingController();
//   String? selectedBrand;
//   String? selectedVehicleType;
//   String? selectedFuelType;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Vehicle Form"),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Form(
//           key: _formKey,
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text("Vehicle Number", style: TextStyle(fontSize: 18.0)),
//               SizedBox(height: 8),
//               TextFormField(
//                 controller: vehicleNumberController,
//                 keyboardType: TextInputType.text,
//                 decoration: InputDecoration(
//                   hintText: 'Enter Vehicle Number',
//                   border: OutlineInputBorder(),
//                 ),
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Please enter a vehicle number';
//                   }
//                   return null;
//                 },
//               ),
//               SizedBox(height: 8),
//               Text("Brand Name", style: TextStyle(fontSize: 18.0)),
//               SizedBox(height: 8),
//               DropdownButtonFormField<String>(
//                 value: selectedBrand,
//                 onChanged: (value) {
//                   setState(() {
//                     selectedBrand = value;
//                   });
//                 },
//                 items: ["Brand1", "Brand2"].map<DropdownMenuItem<String>>((String value) {
//                   return DropdownMenuItem<String>(
//                     value: value,
//                     child: Text(value),
//                   );
//                 }).toList(),
//                 decoration: InputDecoration(
//                   hintText: 'Select Brand',
//                   border: OutlineInputBorder(),
//                 ),
//               ),
//               SizedBox(height: 8),
//               Text("Vehicle type", style: TextStyle(fontSize: 18.0)),
//               SizedBox(height: 8),
//               DropdownButtonFormField<String>(
//                 value: selectedVehicleType,
//                 onChanged: (value) {
//                   setState(() {
//                     selectedVehicleType = value;
//                   });
//                 },
//                 items: ["Bike", "Car"].map<DropdownMenuItem<String>>((String value) {
//                   return DropdownMenuItem<String>(
//                     value: value,
//                     child: Text(value),
//                   );
//                 }).toList(),
//                 decoration: InputDecoration(
//                   hintText: 'Select Vehicle Type',
//                   border: OutlineInputBorder(),
//                 ),
//               ),
//               SizedBox(height: 8),
//               Text("Fuel Type", style: TextStyle(fontSize: 18.0)),
//               SizedBox(height: 8),
//               DropdownButtonFormField<String>(
//                 value: selectedFuelType,
//                 onChanged: (value) {
//                   setState(() {
//                     selectedFuelType = value;
//                   });
//                 },
//                 items: ["Petrol", "Diesel"].map<DropdownMenuItem<String>>((String value) {
//                   return DropdownMenuItem<String>(
//                     value: value,
//                     child: Text(value),
//                   );
//                 }).toList(),
//                 decoration: InputDecoration(
//                   hintText: 'Select Fuel Type',
//                   border: OutlineInputBorder(),
//                 ),
//               ),
//               SizedBox(height: 8),
//               ElevatedButton(
//                 onPressed: () {
//                   if (_formKey.currentState!.validate()) {
//                     Vehicle newVehicle = Vehicle(
//                       vehicleNumber: vehicleNumberController.text,
//                       brand: selectedBrand,
//                       vehicleType: selectedVehicleType,
//                       fuelType: selectedFuelType,
//                     );
//                     widget.onSubmit(newVehicle);
//                   }
//                 },
//                 child: Text('Submit'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class VehicleList extends StatelessWidget {
//   final List<Vehicle> vehicles;
//   final Function(int, String) onDelete;

//   VehicleList({required this.vehicles, required this.onDelete});

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Visibility(
//           visible: vehicles.isNotEmpty,
//           child: Expanded(
//             child: ListView.builder(
//               itemCount: vehicles.length,
//               itemBuilder: (context, index) {
//                 return VehicleCard(
//                   vehicle: vehicles[index],
//                   onDelete: () {
//                     onDelete(index, vehicles[index].vehicleType ?? "");
//                   },
//                 );
//               },
//             ),
//           ),
//           replacement: Text(
//             "No vehicle added",
//             style: TextStyle(color: Colors.red),
//           ),
//         ),
//       ],
//     );
//   }
// }

// class VehicleCard extends StatelessWidget {
//   final Vehicle vehicle;
//   final VoidCallback onDelete;

//   VehicleCard({required this.vehicle, required this.onDelete});

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       margin: EdgeInsets.all(8.0),
//       child: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text("Vehicle Number: ${vehicle.vehicleNumber}", style: TextStyle(fontSize: 16.0)),
//             if (vehicle.brand != null) Text("Brand: ${vehicle.brand!}", style: TextStyle(fontSize: 16.0)),
//             if (vehicle.vehicleType != null) Text("Vehicle Type: ${vehicle.vehicleType!}", style: TextStyle(fontSize: 16.0)),
//             if (vehicle.fuelType != null) Text("Fuel Type: ${vehicle.fuelType!}", style: TextStyle(fontSize: 16.0)),
//             SizedBox(height: 8),
//             Align(
//               alignment: Alignment.topRight,
//               child: IconButton(
//                 icon: Icon(Icons.close),
//                 onPressed: onDelete,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class Vehicle {
//   final String vehicleNumber;
//   final String? brand;
//   final String? vehicleType;
//   final String? fuelType;

//   Vehicle({
//     required this.vehicleNumber,
//     this.brand,
//     this.vehicleType,
//     this.fuelType,
//   });
// }

