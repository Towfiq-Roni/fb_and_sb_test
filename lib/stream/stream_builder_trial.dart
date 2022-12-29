// import 'package:flutter/material.dart';
// import '../future/future_builder_trial.dart';
//
// class StreamBuilderTrial extends StatefulWidget {
//   const StreamBuilderTrial({Key? key}) : super(key: key);
//
//   @override
//   State<StreamBuilderTrial> createState() => _StreamBuilderTrialState();
// }
//
// class _StreamBuilderTrialState extends State<StreamBuilderTrial> {
//
//   int _count = 0;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         title: const Text('StreamBuilder Page'),
//         centerTitle: true,
//       ),
//       body: Center(
//         child: StreamBuilder<int>(
//           stream: _watch(),
//           builder: (context, snapshot){
//             if(snapshot.connectionState == ConnectionState.active){
//               return Text('Counter ${snapshot.data}');
//             }
//             return CircularProgressIndicator();
//           }
//         ),
//       ),
//     );
//   }
//
//   Stream<int> _watch() async*{
//     while(true){
//       await Future.delayed(Duration(seconds: 1));
//       yield _count++;
//       if(_count == 10){
//         // return FutureBuilderTrial();
//         Navigator.push(context,
//             MaterialPageRoute(
//                 builder: (context) => const FutureBuilderTrial()));
//       }
//     }
//   }
//
// }
