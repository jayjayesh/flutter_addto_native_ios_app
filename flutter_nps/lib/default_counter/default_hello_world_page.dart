import 'package:flutter/material.dart';

class DefaultHelloWorldPage extends StatelessWidget {
  const DefaultHelloWorldPage({super.key});
  static const routeName = '/default_hello_world_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Text('Hello World'),
      ),
    );
  }
}
