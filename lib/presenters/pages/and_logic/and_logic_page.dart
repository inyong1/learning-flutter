import 'package:flutter/material.dart';

class AndLogicPage extends StatefulWidget {
  const AndLogicPage({Key? key}) : super(key: key);

  @override
  _AndLogicPageState createState() => _AndLogicPageState();
}

class _AndLogicPageState extends State<AndLogicPage> {
  bool aAktif = false;
  bool bAktif = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('AND Logic'),
        ),
        body: Center(
          child: Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 200,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    CheckboxListTile(
                        title: const Text("Input A"),
                        value: aAktif,
                        onChanged: (v) {
                          aAktif = v ?? false;
                          setState(() {});
                        }),
                    CheckboxListTile(
                        title: const Text("Input b"),
                        value: bAktif,
                        onChanged: (v) {
                          bAktif = v ?? false;
                          setState(() {});
                        }),
                  ],
                ),
              ),
              Text(
                (aAktif && bAktif) ? "YES" : "NO",
                style: const TextStyle(fontSize: 30),
              )
            ],
          ),
        ));
  }
}
