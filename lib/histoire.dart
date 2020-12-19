import 'package:flutter/material.dart';

class Histoire extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Histoire"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamedAndRemoveUntil(
                context, '/', (Route<dynamic> route) => false);

            // Navigator.pushNamed(context, '/');
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}
