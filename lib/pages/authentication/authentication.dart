import 'package:flutter/material.dart';
import 'package:flutter_web_admin_page/constants/style.dart';
import 'package:flutter_web_admin_page/widgets/custom_text.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthenticationPage extends StatelessWidget {
  const AuthenticationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      constraints: const BoxConstraints(maxWidth: 400),
      padding: const EdgeInsets.all(24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 12),
                child: Image.asset("assets/icons/logo.png"),
              ),
              Expanded(child: Container())
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Text(
                "Login",
                style: GoogleFonts.roboto(
                    fontSize: 30, fontWeight: FontWeight.bold),
              )
            ],
          ),
          Row(
            children: [
              CustomText(
                text: "Welcome back to the admin panel",
                color: lightGrey,
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          TextField(
            decoration: InputDecoration(
              labelText: "Email",
              hintText: "user@domain.com",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
