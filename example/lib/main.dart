import 'package:easy_actions/easy_actions.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Easy Buttons Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Easy Buttons',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 12, 20, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Elevated Buttons',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Wrap(
              spacing: 12,
              runSpacing: 12,
              children: [
                EasyElevatedButton(
                  label: 'Simple',
                  onPressed: () {},
                ),
                EasyElevatedButton(
                  label: 'Rounded',
                  isRounded: true,
                  onPressed: () {},
                ),
                EasyElevatedButton(
                  label: 'Elevated',
                  isRounded: true,
                  elevation: 12,
                  onPressed: () {},
                ),
                EasyElevatedButton(
                  label: 'Leading Icon',
                  isRounded: true,
                  icon: const Icon(
                    Icons.add,
                    size: 20,
                  ),
                  onPressed: () {},
                ),
                EasyElevatedButton(
                  label: 'Trailing Icon',
                  isRounded: true,
                  icon: const Icon(
                    Icons.add,
                    size: 20,
                  ),
                  isTrailingIcon: true,
                  onPressed: () {},
                ),
                EasyElevatedButton(
                  label: 'Custom Color',
                  isRounded: true,
                  icon: const Icon(
                    Icons.add,
                    size: 20,
                  ),
                  isTrailingIcon: true,
                  color: Colors.red,
                  onPressed: () {},
                ),
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            const Text(
              'Outlined Buttons',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Wrap(
              spacing: 12,
              runSpacing: 12,
              children: [
                EasyOutlinedButton(
                  label: 'Simple',
                  onPressed: () {},
                ),
                EasyOutlinedButton(
                  label: 'Rounded',
                  isRounded: true,
                  onPressed: () {},
                ),
                EasyOutlinedButton(
                  label: 'Leading Icon',
                  isRounded: true,
                  icon: const Icon(
                    Icons.add,
                    size: 20,
                  ),
                  onPressed: () {},
                ),
                EasyOutlinedButton(
                  label: 'Trailing Icon',
                  isRounded: true,
                  icon: const Icon(
                    Icons.add,
                    size: 20,
                  ),
                  isTrailingIcon: true,
                  onPressed: () {},
                ),
                EasyOutlinedButton(
                  label: 'Custom Color',
                  isRounded: true,
                  icon: const Icon(
                    Icons.add,
                    size: 20,
                    color: Colors.red,
                  ),
                  isTrailingIcon: true,
                  color: Colors.red,
                  labelColor: Colors.red,
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
