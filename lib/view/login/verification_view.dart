import 'package:eucalyptus_app/common_widgets/line_textfield.dart';
import 'package:eucalyptus_app/view/login/select_location_view.dart';
import 'package:flutter/material.dart';

import '../../common/color_extensions.dart';

class VerificationView extends StatefulWidget {
  const VerificationView({super.key});

  @override
  State<VerificationView> createState() => _VerificationViewState();
}

class _VerificationViewState extends State<VerificationView> {
  TextEditingController txtOTP = TextEditingController();

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
                    SizedBox(
                      height: media.width * 0.1,
                    ),
                    Text(
                      "Entrez le code a 4 chiffres",
                      style: TextStyle(
                          color: TColor.primaryText,
                          fontSize: 26,
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    LineTextField(
                        title: "Code",
                        placeholder: "- - - -",
                        controller: txtOTP),
                    SizedBox(
                      height: media.width * 0.3,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              "Renvoyer le code",
                              style: TextStyle(
                                  color: TColor.primary,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500),
                            )),
                        InkWell(
                          borderRadius: BorderRadius.circular(30),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const SelectLocationView()));
                          },
                          child: Container(
                            width: 60,
                            height: 60,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: TColor.primary,
                                borderRadius: BorderRadius.circular(30)),
                            child: Image.asset(
                              "assets/images/next.png",
                              width: 20,
                              height: 20,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );

    ;
  }
}
