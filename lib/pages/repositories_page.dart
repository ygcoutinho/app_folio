import 'package:app_folio/components/appbar/appbar_content.dart';
import 'package:app_folio/components/bottomnavbar/bottom_navbar_custom.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class RepositoriesPage extends StatelessWidget {
  const RepositoriesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: AppBarContent(),
      ),
      bottomNavigationBar: const BottomNavBarCustom(),
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          child: const WebView(
            initialUrl: 'https://github.com/ygcoutinho/',
            javascriptMode: JavascriptMode.unrestricted,
          ),
        ),
      ),
    );
  }
}
