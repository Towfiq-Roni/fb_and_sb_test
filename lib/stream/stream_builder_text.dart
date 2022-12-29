// import 'package:flutter/material.dart';
// import 'dart:async';
//
// class StreamBuilderText extends StatefulWidget {
//   const StreamBuilderText({Key? key}) : super(key: key);
//
//   @override
//   State<StreamBuilderText> createState() => _StreamBuilderTextState();
// }
//
// class _StreamBuilderTextState extends State<StreamBuilderText> {
//   var textValue = TextEditingController();
//
//   Stream<String> inputListener(TextEditingController controller) async*{
//     while(true){
//       await Future.delayed(const Duration(seconds: 1));
//       yield controller.value.text;
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         title: const Text('StreamBuilder Text'),
//       ),
//       body: Center(
//         child: StreamBuilder<String>(
//           stream: inputListener(textValue),
//           builder: (context, snapshot) {
//             return Text('${inputListener(textValue)}');
//           }
//         ),
//       ),
//     );
//   }
// }
