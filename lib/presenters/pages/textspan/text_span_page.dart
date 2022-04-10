import 'package:flutter/material.dart';

class TextSpanPage extends StatelessWidget {
  const TextSpanPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TextSpan'),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text.rich(
              TextSpan(
                children: [
                  const TextSpan(
                    text: "Ini adalah string biasa. Panjangnya lebih dari"
                        " satu baris. Untuk info lebih lanjut buka"
                        " flutter.dev...",
                    style: TextStyle(fontSize: 20),
                  ),
                  WidgetSpan(
                    child: InkWell(
                      onTap: () {},
                      child: const Text(
                        " Click Me!",
                        style: TextStyle(color: Colors.blue, fontSize: 20),
                      ),
                    ),
                  ),
                  const TextSpan(
                    text: " Untuk info lebih lanjut",
                    style: TextStyle(fontSize: 20),
                  )
                ],
              ),
            ),
            const SizedBox(height: 10),
            const Text.rich(TextSpan(children: [
              TextSpan(text: "Masuk "),
              TextSpan(
                  text: "Lewat ",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  )),
              TextSpan(text: "pintu "),
            ]))
          ],
        ),
      ),
    );
  }
}
