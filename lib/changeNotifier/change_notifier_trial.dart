import 'package:fb_and_sb_test/core/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ChangeNotifierTrial extends StatefulWidget {
  const ChangeNotifierTrial({Key? key}) : super(key: key);

  @override
  State<ChangeNotifierTrial> createState() => _ChangeNotifierTrialState();
}

class _ChangeNotifierTrialState extends State<ChangeNotifierTrial> {
  @override
  Widget build(BuildContext context) {
    EventProviderCNotifier _data = Provider.of<EventProviderCNotifier>(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('ChangeNotifier Page'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('ChangeNotifier value:'),
            Text('${_data.count}'),
            ElevatedButton(
                onPressed: () {
                  return _data.incrementCount();
                },
                child: Text('Add Value')),
          ],
        ),
      ),
    );
  }
}
