import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// class FutureProviderTrial extends StatefulWidget {
//   const FutureProviderTrial({Key? key}) : super(key: key);
//
//   @override
//   State<FutureProviderTrial> createState() => _FutureProviderTrialState();
// }
//
// class _FutureProviderTrialState extends State<FutureProviderTrial> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('FutureProvider Page'),
//       ),
//       body: Center(
//         // child: FutureBuilder<int>(),
//       ),
//     );
//   }
// }

class FutureProviderTrial extends StatefulWidget {
  const FutureProviderTrial({Key? key}) : super(key: key);

  @override
  State<FutureProviderTrial> createState() => _FutureProviderTrialState();
}

class _FutureProviderTrialState extends State<FutureProviderTrial> {
  @override
  Widget build(BuildContext context) {
    var _number = Provider.of<int>(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('FutureProvider Page'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('FutureProvider value:'),
            Text('${_number.toString()}'),
          ],
        ),
      ),
    );
  }
}
