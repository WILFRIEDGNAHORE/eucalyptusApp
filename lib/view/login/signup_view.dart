import 'package:eucalyptus_app/common_widgets/line_textfield.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../common/color_extensions.dart';
import '../../common_widgets/dropdown.dart';
import '../../common_widgets/round_button.dart';
import 'login_view.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  TextEditingController txtUsername = TextEditingController();
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPassword = TextEditingController();
  bool isShow = false;

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return Stack(
      children: [
        Container(
          color: Colors.white,
          child: Image.asset(
            "assets/images/bottom_bg.png",
            width: media.width,
            height: media.height,
            fit: BoxFit.cover,
          ),
        ),
        Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Image.asset(
                  "assets/images/back.png",
                  width: 20,
                  height: 20,
                )),
          ),
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/logo.png",
                          width: 130,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: media.width * 0.10,
                    ),
                    Text(
                      "Sign Up",
                      style: TextStyle(
                          color: TColor.primaryText,
                          fontSize: 26,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: media.width * 0.03,
                    ),
                    Text(
                      "entrez vos informations d'identification pour continuer",
                      style: TextStyle(
                          color: TColor.secondaryText,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: media.width * 0.1,
                    ),
                    LineTextField(
                        title: "Username",
                        placeholder: "Entrez votre nom d'utilisateur",
                        controller: txtUsername),
                    SizedBox(
                      height: media.width * 0.07,
                    ),
                    LineTextField(
                        title: "Email",
                        placeholder: "Entrez votre Email",
                        keyboardType: TextInputType.emailAddress,
                        controller: txtEmail),
                    SizedBox(
                      height: media.width * 0.07,
                    ),
                    LineTextField(
                      title: "Mot de passe",
                      placeholder: "Entrez votre mot de passe",
                      controller: txtPassword,
                      obscureText: !isShow,
                      right: IconButton(
                          onPressed: () {
                            setState(() {
                              isShow = !isShow;
                            });
                          },
                          icon: Icon(
                            !isShow ? Icons.visibility_off : Icons.visibility,
                            color: TColor.textTittle,
                          )),
                    ),
                    SizedBox(
                      height: media.width * 0.04,
                    ),
                    RichText(
                        text: TextSpan(
                            style: TextStyle(
                                color: TColor.secondaryText,
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
                            children: [
                          const TextSpan(
                              text: "By continuing you agree to ours "),
                          TextSpan(
                              text: " Terms of services ",
                              style: TextStyle(
                                  color: TColor.primary,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  print("Terms of services Click");
                                }),
                          TextSpan(
                            text: " and ",
                            style: TextStyle(
                                color: TColor.primary,
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
                          ),
                          TextSpan(
                              text: " Privacy Policy.",
                              style: TextStyle(
                                  color: TColor.primary,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  print("Privacy Policy Click");
                                })
                        ])),
                    SizedBox(
                      height: media.width * 0.05,
                    ),
                    RoundButton(
                      title: "s'inscrire",
                      onPressed: () {
                        /*Navigator.push(context,
                        MaterialPageRoute(builder: (context) => OnBorading()));*/
                      },
                    ),
                    SizedBox(
                      height: media.width * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const LogInView()));
                          },
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "Vous avez déjà un compte ?",
                                style: TextStyle(
                                    color: TColor.primaryText,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              Text(
                                "Sign In",
                                style: TextStyle(
                                    color: TColor.primary,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
