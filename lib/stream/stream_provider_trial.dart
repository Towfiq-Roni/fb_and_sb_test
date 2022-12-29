import 'dart:async';

import 'package:fb_and_sb_test/core/provider.dart';
import 'package:fb_and_sb_test/future/future_provider_trial.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// class StreamProviderTrial extends StatefulWidget {
//   const StreamProviderTrial({Key? key}) : super(key: key);
//
//   @override
//   State<StreamProviderTrial> createState() => _StreamProviderTrialState();
// }
//
// class _StreamProviderTrialState extends State<StreamProviderTrial> {
//   int _count = EventProvider().getCounter;
//   late StreamController<int> st;
//
//   @override
//   void initState() {
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     // var st = Provider.of<int>(context);
//
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         title: const Text('StreamProvider Page'),
//       ),
//       body: Center(
//         child: StreamBuilder<int>(
//           stream: _watch(),
//           builder: (context, snapshot) {
//             return Column(
//               children: [
//                 Text('Whatever for now'),
//               ],
//             );
//           }
//         ),
//       ),
//     );
//   }
//
//   Stream<int> _watch() async* {
//     while (true) {
//       await Future.delayed(Duration(seconds: 1));
//       // int _count = EventProvider().getCounter;
//       yield _count++;
//       if (_count == 10) {
//         // return FutureBuilderTrial();
//         Navigator.push(
//             context,
//             MaterialPageRoute(
//                 builder: (context) => const FutureProviderTrial()));
//       }
//     }
//   }
// }

class StreamProviderTrial extends StatefulWidget {
  const StreamProviderTrial({Key? key}) : super(key: key);

  @override
  State<StreamProviderTrial> createState() => _StreamProviderTrialState();
}

class _StreamProviderTrialState extends State<StreamProviderTrial> {
  @override
  Widget build(BuildContext context) {
    var _value = Provider.of<int>(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('StreamProvider Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('StreamProvider value:'),
            Text('${_value.toString()}'),
            ElevatedButton(onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const FutureProviderTrial()),
              );
            },
                child: Text('Go to Future')
            ),
          ],
        ),
      ),
    );
  }
}
