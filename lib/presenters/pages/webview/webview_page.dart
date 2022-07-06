import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:url_launcher/url_launcher.dart';

class WebviewPage extends StatelessWidget {
  const WebviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Webview'),
      ),
      body: InAppWebView(
        initialUrlRequest: URLRequest(
          url: Uri.parse("https://akuntabel.id"),
        ),
        onLoadStart: (a, b) {
          if (b != null && b.toString().startsWith("whatsapp")) {
            canLaunchUrl(b).then((value) => launchUrl(b));
          }
        },
        onLoadError: (controlller, uri, i, s) {
          if (uri?.toString().startsWith("whatsapp") == true) {
            controlller.canGoBack().then((value) {
              if (value) {
                controlller.goBack();
              }
            });
          }
        },
      ),
    );
  }
}
