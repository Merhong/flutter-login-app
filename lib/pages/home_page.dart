import 'package:flutter/material.dart';
import 'package:login_app/components/logo.dart';
import 'package:login_app/size.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(height: xlarge_gap),
            Logo("Care Soft"),
            SizedBox(height: large_gap),
            TextButton(
              onPressed: () {
                // 컨텍스트 정보를 계속 전달함
                // Navigator.pop(context);
              },
              child: Text("Get Start"),
            )
          ],
        ),
      ),
    );
  }
}
