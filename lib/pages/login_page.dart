import 'package:flutter/material.dart';
import 'package:login_app/components/custom_form.dart';
import 'package:login_app/components/logo.dart';
import 'package:login_app/size.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 키보드창이 올라올때 화면이 안가려지게 설정, 디폴트값은 true
      resizeToAvoidBottomInset: true,
      // Inset 영역 때문에 ListView를 사용한다. (키보드 창이 올라옴)
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          SizedBox(height: xlarge_gap),
          Logo("Login"),
          // HTML의 form태그와 동일함 button의 모두 submit할때 사용
          CustomForm(),
        ],
      ),
    );
  }
}
