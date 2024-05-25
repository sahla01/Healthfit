import 'package:flutter/material.dart';
import 'package:heathfit/utilities/constant.dart';

import '../../Widgets/app_text.dart';
import '../../utilities/sizeconfigure.dart';
import 'verification_screen.dart';
import '../login_page/login_page.dart';

class NewPassWordScreen extends StatefulWidget {
  const NewPassWordScreen({super.key});

  @override
  State<NewPassWordScreen> createState() => _NewPassWordScreenState();
}

class _NewPassWordScreenState extends State<NewPassWordScreen> {
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController repasswordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kButtonTextColor,
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 70,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 250),
              child: InkWell(
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => VerificationScreen()));
                  },
                  child: Container(
                      height: 5.5 * SizeConfigure.heightMultiplier!,
                      width: 15.0 * SizeConfigure.widthMultiplier!,
                      decoration: BoxDecoration(
                          color: Colors.grey[800], shape: BoxShape.circle),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: kTitleColor,
                          size: 2.5 * SizeConfigure.textMultiplier!,
                        ),
                      ))),
            ),
            SizedBox(
              height: 3.9 * SizeConfigure.heightMultiplier!,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 110),
              child: Text(
                'Create New\nPassword',
                style: TextStyle(
                    color: kTitleColor,
                    fontSize: 3.8 * SizeConfigure.textMultiplier!),
              ),
            ),
            SizedBox(
              height: 120,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 40),
              child: TextFormField(
                style: TextStyle(color: Colors.white),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Enter a password";
                  } else if (value.length < 10 || value.length > 10) {
                    return "password must be 6 character";
                  } else
                    return null;
                },
                controller: passwordcontroller,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  filled: true,
                  hintText: 'New Password',
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        color: Color(
                            0xff3a3737) // Change the border color to your desired color
                        ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        color: Color(
                            0xff3a3737) // Change the border color to your desired color
                        ),
                  ),
                  hintStyle: TextStyle(
                      color: Colors.white,
                      fontSize:
                      1.7 * SizeConfigure.textMultiplier! // Change the hint text color to your desired color
                      ),
                ),
              ),
            ),
            SizedBox(
              height: 2.5 * SizeConfigure.heightMultiplier!,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 40),
              child: TextFormField(
                style: TextStyle(color: Colors.white),
                validator: (value) {
                  if (value != passwordcontroller.text) {
                    return "password mismatch";
                  } else
                    return null;
                },
                controller: repasswordcontroller,
                decoration: InputDecoration(
                  filled: true,
                  hintText: 'Re-Enter Password',
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        color: Color(
                            0xff3a3737) // Change the border color to your desired color
                        ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        color: Color(
                            0xff3a3737) // Change the border color to your desired color
                        ),
                  ),
                  hintStyle: TextStyle(
                      color: Colors.white,
                      fontSize:
                      1.7 * SizeConfigure.heightMultiplier! // Change the hint text color to your desired color
                      ),
                ),
              ),
            ),
            SizedBox(
              height: 17.6 * SizeConfigure.heightMultiplier!,
            ),
            InkWell(
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => LoginPage()));
                },
                child: Container(
                    decoration: BoxDecoration(
                        color: kMainColor,
                        borderRadius: BorderRadius.circular(30)),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 22, right: 22, top: 13, bottom: 13),
                      child: AppText(
                        text: "Submit ➤",
                        color: kButtonTextColor,
                        size: 1.9 * SizeConfigure.textMultiplier!,
                        fw: FontWeight.w500,
                      ),
                    )))
          ],
        ),
      ),
    );
  }
}
