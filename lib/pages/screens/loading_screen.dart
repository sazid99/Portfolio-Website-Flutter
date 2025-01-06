import 'package:flutter/material.dart';
import 'package:portfolio/pages/portfolio_page.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

  Future<void> loadPortfolioData() async {
    await Future.delayed(const Duration(seconds: 3));
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: loadPortfolioData(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        } else if (snapshot.connectionState == ConnectionState.done) {
          return const PortfolioPage();
        } else {
          return const Scaffold(
            body: Center(
              child: Text("ডেটা লোড করতে সমস্যা হয়েছে!"),
            ),
          );
        }
      },
    );
  }
}