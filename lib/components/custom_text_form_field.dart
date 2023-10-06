import 'package:flutter/material.dart';
import 'package:login_app/size.dart';

class CustomTextFormField extends StatelessWidget {
  String text;
  bool isPassword;

  CustomTextFormField({required this.text, this.isPassword = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("${text}"),
        SizedBox(height: small_gap),
        TextFormField(
          // 유효성 검사를 위한 validator
          // 1. value가 들어옴
          // 2. value로 유효성 검사하기
          // 3. 리턴
          //    null 리턴 -> 유효성 검사 통과
          //    메시지 리턴 -> 유효성 검사 실패
          validator: (value) {
            if (value == null) {
              return "null 값 들어왔음 String 적어!!!";
            }
            // 공백처리 (null이 아닐때의 처리)
            else {
              if (value.isEmpty) {
                return "공백 넣지마!!";
              }
              return null;
            }
          },
          obscureText: isPassword, // 비밀번호를 넣어줄때만 true
          // obscureText: true, // html의 input태그의 password처럼 가려줌
          decoration: InputDecoration(
            hintText: "Enter ${text}",
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
      ],
    );
  }
}
