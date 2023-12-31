import 'package:flutter/material.dart';
import 'package:login_app/components/custom_text_form_field.dart';
import 'package:login_app/size.dart';
import 'package:login_app/user_repository.dart';
import 'package:login_app/validator_util.dart';

class CustomForm extends StatelessWidget {
  // GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final _formKey = GlobalKey<FormState>(); // 유효성 검사를 위한 변수

  final _email = TextEditingController();
  final _password = TextEditingController();

  CustomForm();

  @override
  Widget build(BuildContext context) {
    // Form 태그로 묶은 이유? 통신이 아님 유효성 검사 때문에 묶었음!!!
    return Form(
      key: _formKey,
      child: Column(
        children: [
          CustomTextFormField(
              text: "Email", validate: validateEmail(), textController: _email),
          CustomTextFormField(
              text: "Password",
              validate: validatePassword(),
              textController: _password,
              isPassword: true),
          SizedBox(height: large_gap),
          TextButton(
            onPressed: () {
              // formKey가 연결되지 않으면 currentState가 null이다.
              // validator가 null 리턴시 true가 되서 유효성 검사 통과!
              if (_formKey.currentState!.validate()) {
                UserRepository repo = UserRepository(); // 서버와 통신을 해서 아이디와 비밀번호를 들고옴
                repo.login(_email.text.trim(), _password.text.trim()); // trim은 앞뒤 공백을 날려줌
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
