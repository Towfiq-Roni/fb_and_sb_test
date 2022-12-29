// import 'dart:async';
//
// import 'package:fb_and_sb_test/streamBuilder/stream_builder_controller.dart';
// import 'package:fb_and_sb_test/streamBuilder/stream_builder_text.dart';
// import 'package:flutter/material.dart';
//
// class StreamBuilderPage extends StatefulWidget {
//   // final VoidCallback? onClickedDone;
//   const StreamBuilderPage({Key? key,
//     // this.onClickedDone,
//   }) : super(key: key);
//
//   // TextEditingController inputText = TextEditingController();
//   // StreamController<String> _inputController = StreamController<String>();
//   // Stream<String> inputListener(TextEditingController controller) async*{
//   //   while(true){
//   //     await Future.delayed(const Duration(seconds: 1));
//   //     yield controller.value.text;
//   //   }
//   // }
//
//
//   @override
//   State<StreamBuilderPage> createState() => _StreamBuilderPageState();
// }
//
// class _StreamBuilderPageState extends State<StreamBuilderPage> {
//
//   TextEditingController inputText = TextEditingController();
//
//   void dispose() {
//     // Clean up the controller when the widget is disposed.
//     inputText.dispose();
//     super.dispose();
//   }
//
//   get textInput => inputText;
//
//   // // StreamController<String> _inputController = StreamController<String>();
//   // Stream<String> inputListener(TextEditingController controller) async*{
//   //   while(true){
//   //     await Future.delayed(const Duration(seconds: 1));
//   //     yield controller.value.text;
//   //   }
//   // }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         title: const Text('Stream Builder Page'),
//       ),
//       body: Center(
//         child: TextField(
//               controller: inputText,
//               onChanged: (inputText){
//                 textInput;
//                 print(inputText);
//               },
//               onSubmitted: (inputText){
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                       builder: (context) => const StreamBuilderController()),
//                 );
//               },
//             )
//       ),
//     );
//   }
//
//   // @override
//
// }
