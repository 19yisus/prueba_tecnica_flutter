import 'package:flutter/material.dart';
import 'presentation/screens/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Titulo de mi app",
      home: Login_screen()
      // home: CounterScreen(),
      // home: MyFirstScreenState(),
    );
  }
}

class MyFirstScreenState extends StatefulWidget{
  const MyFirstScreenState({super.key});
  
  @override
  State<MyFirstScreenState> createState() => MyFirstScreen();
}

class MyFirstScreen extends State<MyFirstScreenState> {
  
  @override
  Widget build(BuildContext context){
    return const Scaffold(
      body: Center(
        child: Column(
          children: [
            Text(
              "Hola mundo", 
              textDirection: TextDirection.ltr, 
              textScaler: TextScaler.linear(5.00), 
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic
              ),
            ),
            Text(
              "Hola mundo", 
              textDirection: TextDirection.ltr, 
              textScaler: TextScaler.linear(5.00), 
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic
              ),
            ),
          ],
        )
      ),
    );
  }
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: const MyHomePage(title: 'App counter'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headlineMedium,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
