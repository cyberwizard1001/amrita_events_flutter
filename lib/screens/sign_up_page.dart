import 'package:amrita_events_flutter/utils/colors.dart' as colors;
import 'package:amrita_events_flutter/widgets/custom_sliver_widget.dart';
import 'package:amrita_events_flutter/widgets/left_beveled_container.dart';
import 'package:amrita_events_flutter/widgets/textbox_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/password_formfield_widget.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.scaffoldColor,
      body: CustomSliverView(
        columnList: [
          Expanded(child: Container()),
          LeftBeveledContainer(columnList: [
            Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Welcome',
                  style: GoogleFonts.nunitoSans(
                      color: colors.primaryTextColor,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                )),
            Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Sign up',
                  style: GoogleFonts.nunitoSans(
                      color: colors.primaryTextColor,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                )),
            Padding(
              padding: const EdgeInsets.only(top: 30, bottom: 5),
              child: TextBoxField(
                validator: (value) {},
                padding: const EdgeInsets.only(bottom: 5),
                title: 'Name',
                hint: 'Please enter your name',
                light: true,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: TextBoxField(
                validator: (value) {},
                padding: const EdgeInsets.only(bottom: 5),
                title: 'Email',
                hint: 'Please enter your e-mail',
                light: true,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                    width: (MediaQuery.of(context).size.width - 70) / 2,
                    child: const PasswordFormFieldWidget(
                        label: 'Password', hintText: 'Password')),
                const SizedBox(
                  width: 10.0,
                ),
                SizedBox(
                    width: (MediaQuery.of(context).size.width - 70) / 2,
                    child: const PasswordFormFieldWidget(
                        label: 'Retype', hintText: 'Retype'))
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Align(
                alignment: Alignment.topLeft,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Sign in instead',
                    style: GoogleFonts.nunitoSans(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: colors.primaryTextColor),
                  ),
                ),
              ),
            ),
            Expanded(child: Container()),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Material(
                  color: colors.accentColor,
                  shape: const CircleBorder(),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      FontAwesomeIcons.google,
                      color: colors.primaryTextColor,
                    ),
                  ),
                ),
                ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'SIGN UP',
                      style: GoogleFonts.nunitoSans(
                          color: colors.primaryTextColor,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                style: ElevatedButton.styleFrom(primary: colors.accentColor),)
              ],
            )
          ])
        ],
      ),
    );
  }
}
