import 'package:flutter/material.dart';
import 'package:login_app/components/custom_text_form_field.dart';
import 'package:login_app/size.dart';

class CustomForm extends StatelessWidget {
  // GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final _formKey = GlobalKey<FormState>(); // 유효성 검사를 위한 변수

  CustomForm();

  @override
  Widget build(BuildContext context) {
    // Form 태그로 묶은 이유? 통신이 아님 유효성 검사 때문에 묶었음!!!
    return Form(
      child: Column(
        key: _formKey,
        children: [
          CustomTextFormField(text: "Email"),
          CustomTextFormField(text: "Password", isPassword: true),
          SizedBox(height: large_gap),
          TextButton(
            onPressed: () {
              // validator가 null 리턴시 true가 되서 유효성 검사 통과!
              if (_formKey.currentState!.validate()) {
                Navigator.pushNamed(context, "/home");
              }
            },
            child: Text("Login"),
          ),
        ],
      ),
    );
  }
}
