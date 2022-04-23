import 'package:flutter/material.dart';

class IntrinsicHeightPage extends StatelessWidget {
  const IntrinsicHeightPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Intrinsic Height Example'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(width: 100, color: Colors.lightGreen),
                const SizedBox(width: 5),
                const Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), hintText: "test aja"),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
