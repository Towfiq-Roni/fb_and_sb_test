import 'dart:async';

import 'package:fb_and_sb_test/stream/stream_builder_trial.dart';
import 'package:fb_and_sb_test/stream/stream_provider_trial.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'core/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final anything = EventProviderStream();
    final SecondAnything = EventProviderFuture();
    final ThirdAnything = EventProviderCNotifier();

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MultiProvider(
        providers: [
          StreamProvider(
            create: (_) => EventProviderStream().intStream(),
            initialData: 0,
          ),
          FutureProvider(
            create: (_) => EventProviderFuture().fc,
            initialData: 0,
          ),
          ChangeNotifierProvider(
            create: (_) => EventProviderCNotifier(),
          ),
        ],
        child: Builder(builder: (context) {
          return Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              title: const Text("Main Page"),
            ),
            body: Center(
              child: ElevatedButton(
                child: const Text('Go to StreamProvider Page'),
                onPressed: () async* {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const StreamProviderTrial()),
                  );
                },
              ),
            ),
          );
        }),
        // MyHomePage(title: 'Home Page')
      ),
    );
  }
}

// class EventProvider {
//   StreamController<int> sc = StreamController();
//   int count = 0;
//
//   Stream<int> intStream() {
//     return sc.stream;
//   }
//
//   add() {
//     sc.add(++count);
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//
//   final String title;
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//
//   late StreamController<int> st;
//
//   @override
//   void initState() {
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           child: Text('Go to StreamBuilder Page'),
//           onPressed: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(
//                   builder: (context) => const StreamProviderTrial()),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
