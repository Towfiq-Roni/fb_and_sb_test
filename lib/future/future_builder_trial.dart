// import 'package:flutter/material.dart';
//
// class FutureBuilderTrial extends StatefulWidget {
//   const FutureBuilderTrial({Key? key}) : super(key: key);
//
//   @override
//   State<FutureBuilderTrial> createState() => _FutureBuilderTrialState();
// }
//
// class _FutureBuilderTrialState extends State<FutureBuilderTrial> {
//
//   int num = 5;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         title: const Text('FutureBuilder Page'),),
//       body: Center(
//         child: FutureBuilder(
//           future: _calc(),
//           builder: (context, snapshot){
//             if(snapshot.connectionState == ConnectionState.done){
//               return Text('Value ${snapshot.data}');
//             }
//             return CircularProgressIndicator();
//           },
//         ),
//       ),
//     );
//   }
//
//   Future<int> _calc() async{
//     await Future.delayed(Duration(seconds: 1));
//     return num * num;
//   }
// }
