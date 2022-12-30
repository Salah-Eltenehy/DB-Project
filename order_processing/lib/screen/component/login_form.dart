import 'package:flutter/material.dart';
import '../../component/isadmin.dart';
import '../../component/rounded_button.dart';
import '../../component/rounded_input.dart';
import '../../component/rounded_password_input.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    Key? key,
    required this.isLogin,
    required this.animationDuration,
    required this.size,
    required this.defaultLoginSize,
  }) : super(key: key);

  final bool isLogin;
  final Duration animationDuration;
  final Size size;
  final double defaultLoginSize;

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: isLogin ? 1.0 : 0.0,
      duration: animationDuration * 4,
      child: Align(
        alignment: Alignment.center,
        child: Container(
          width: size.width,
          height: defaultLoginSize,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                SizedBox(height: 40),

                Container(
                    height: 175,
                    width: 175,
                    child: const Image(
                        image: AssetImage('assets/booklogo.PNG'))),

                SizedBox(height: 40),
                RoundedInput(icon: Icons.mail, hint: 'Username'),
                RoundedPasswordInput(),
                SizedBox(height: 10),
                // isadmin(),
                // SizedBox(height: 10),
                RoundedButton(title: 'LOGIN'),
                SizedBox(height: 10),

              ],
            ),
          ),
        ),
      ),
    );
  }
}