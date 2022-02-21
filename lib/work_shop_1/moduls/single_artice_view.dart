import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class SingleArticleView extends StatelessWidget {
final url;

SingleArticleView(this.url);

@override
  Widget build(BuildContext context) {
    return WebView(initialUrl: url,);
  }
}
