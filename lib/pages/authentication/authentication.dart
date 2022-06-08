import 'package:flutter/material.dart';
import 'package:flutter_web_admin_page/constants/style.dart';
import 'package:flutter_web_admin_page/helpers/responsiveness.dart';
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

          //Email Input Field
          TextField(
            decoration: InputDecoration(
              labelText: "Email",
              hintText: "user@domain.com",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),

          const SizedBox(
            height: 15,
          ),

          //Password Input Field
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: "Password",
              hintText: "123",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),

          const SizedBox(
            height: 15,
          ),

          //Remeber me and Forgot Password
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Checkbox(value: true, onChanged: (value) {}),
                  const CustomText(text: "Remeber me"),
                ],
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
