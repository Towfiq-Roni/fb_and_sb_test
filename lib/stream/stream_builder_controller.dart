// import 'dart:async';
// import 'package:fb_and_sb_test/streamBuilder/stream_builder.dart';
// import 'package:flutter/material.dart';
//
// class InputtedText{
//   String anyText;
//   InputtedText({required this.anyText});
// }
//
// class StreamBuilderController extends StatefulWidget {
//   const StreamBuilderController({Key? key}) : super(key: key);
//
//   @override
//   State<StreamBuilderController> createState() => _StreamBuilderControllerState();
// }
//
// class _StreamBuilderControllerState extends State<StreamBuilderController> {
//
//   var input = StreamBuilderPage().toString();
//   // var whut = StreamBuilderPage().textInput;
//   // TextEditingController inputText = TextEditingController();
//   // StreamController<String> _inputController = StreamController<String>();
//   // Stream inputListeners = (() async*{
//   Stream<InputtedText> _inputListener() async*{
//     while(true){
//       await Future.delayed(const Duration(seconds: 1));
//       yield InputtedText(anyText: '$input');
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Center(
//         child: StreamBuilder(
//           stream: _inputListener(),
//           builder: (context, AsyncSnapshot<InputtedText> snapshot) {
//             if(snapshot.hasData) {
//               return Text('${input}');
//             }
//             return const LinearProgressIndicator();
//           }
//         ),
//       ),
//     );
//   }
// }
