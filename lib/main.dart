import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({
    super.key,
  });

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  List<int> numbers = [];

  void onPlusClicked() {
    setState(() {
      numbers.add(numbers.length);
    });
  }

  void onMinusClicked() {
    if (numbers.isEmpty) return;
    setState(() {
      numbers.removeLast();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xfff4eddb),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Click Count',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              for (var number in numbers) Text('$number'),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: onMinusClicked,
                    icon: const Icon(
                      Icons.indeterminate_check_box_rounded,
                    ),
                  ),
                  IconButton(
                    onPressed: onPlusClicked,
                    icon: const Icon(
                      Icons.add_box_rounded,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
