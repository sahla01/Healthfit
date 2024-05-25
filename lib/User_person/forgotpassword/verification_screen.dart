import 'package:flutter/material.dart';
import 'package:heathfit/utilities/constant.dart';

import '../../Widgets/app_text.dart';
import '../../utilities/sizeconfigure.dart';
import 'newpassword_screen.dart';
import 'forgotpassword_screen.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({super.key});

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  TextEditingController otpcontroller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kButtonTextColor,
      body:Container(
        child: Column(
          children: [
            SizedBox(
              height: 10.0 * SizeConfigure.heightMultiplier!,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 260),
              child:  InkWell(
                  onTap: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ForgotPassword()));                  },
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
              height:  3.9 * SizeConfigure.heightMultiplier!,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 160),
              child: Text(
                'Verification',
                style: TextStyle(color: kTitleColor,
                    fontSize: 3.2*SizeConfigure.textMultiplier!,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 18,right: 55),
              child: Text("Check your SMS, We have sent the\nOTP to your registered mobile",
                style: TextStyle(
                    color: kTitleColor,
                    fontSize: 1.9*SizeConfigure.textMultiplier!,
                    fontWeight: FontWeight.w300
                ),
              ),
            ),
            SizedBox(height: 26.5 * SizeConfigure.heightMultiplier!,),
            Padding(
              padding: const EdgeInsets.only(left: 40,right: 40),
              child: TextFormField(
                style: TextStyle(color: Colors.white),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Enter a valid OTP";
                  }
                  else if (value.length < 10 || value.length > 10) {
                    return "phone must be 6 character";
                  }
                  else
                    return null;
                },
                controller: otpcontroller,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  filled: true,
                  hintText: 'Verify OTP',
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        color: Color(0xff3a3737)// Change the border color to your desired color
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        color: Color(0xff3a3737) // Change the border color to your desired color
                    ),
                  ),

                  hintStyle: TextStyle(
                      color: Colors.white ,
                      fontSize: 2.2 * SizeConfigure.heightMultiplier!// Change the hint text color to your desired color
                  ),
                ),
              ),
            ),
            SizedBox(height: 18.3 * SizeConfigure.heightMultiplier!,),
            InkWell(
                onTap: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => NewPassWordScreen()));
                },
                child: Container(
                    decoration: BoxDecoration(
                        color: kMainColor,
                        borderRadius: BorderRadius.circular(30)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 22,right: 22,top: 10,bottom: 13),
                      child: AppText(
                        text: "Sent OTP ➤",
                        color: kButtonTextColor,
                        size: 1.9*SizeConfigure.textMultiplier!,
                        fw: FontWeight.w500,
                      ),
                    )))
          ],
        ),
      ) ,
    );
  }
}
