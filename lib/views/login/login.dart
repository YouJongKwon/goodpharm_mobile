import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:goodpharm_mobile/views/common/GpTextField.dart';

class Login extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            GpTextField("아이디"),
            GpTextField("비밀번호"),
          ],
        ),
      )
    );
  }


}

class SnsLoginLayer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

      ],
    );
  }

}