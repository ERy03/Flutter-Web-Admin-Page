import 'package:flutter/material.dart';
import 'package:flutter_web_admin_page/widgets/custom_text.dart';

class AuthenticationPage extends StatelessWidget {
  const AuthenticationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      constraints: BoxConstraints(maxWidth: 400),
      padding: EdgeInsets.all(24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(right: 12),
                child: Image.asset("assets/icons/logo.png"),
              ),
              Expanded(child: Container())
            ],
          ),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    ));
  }
}
