import 'package:flutter/material.dart';
import 'package:heathfit/User_person/Homep_Page/Profile_Screen/settings_screen/security_settings.dart';
import 'package:heathfit/utilities/constant.dart';
import 'package:heathfit/utilities/sizeconfigure.dart';
import '../../../Widgets/app_text.dart';
import '../profile_screen.dart';

class HelpScreen extends StatefulWidget {
  const HelpScreen({super.key});

  @override
  State<HelpScreen> createState() => _HelpScreenState();
}

class _HelpScreenState extends State<HelpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kButtonTextColor,
      body: Column(
        children: [
          SizedBox(
            height: 10.0*SizeConfigure.heightMultiplier!,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 26),
                child: InkWell(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProfileScreen()));
                    },
                    child: Container(
                        height: 4.5 * SizeConfigure.heightMultiplier!,
                        width: 15.0 * SizeConfigure.widthMultiplier!,
                        decoration: BoxDecoration(
                            color: Colors.grey[800], shape: BoxShape.circle),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: kTitleColor,
                            size: 16,
                          ),
                        ))),
              ),
              SizedBox(
                width: 21.0*SizeConfigure.widthMultiplier!,
              ),
              AppText(
                text: "Help",
                size: 2.8 * SizeConfigure.textMultiplier!,
                fw: FontWeight.bold,
                color: kTitleColor,
              ),
            ],
          ),
          SizedBox(height: 5.0*SizeConfigure.heightMultiplier!),
          Padding(
            padding: const EdgeInsets.only(right: 230),
            child: AppText(
              text: "FAQ’s",
              size: 2.7 * SizeConfigure.textMultiplier!,
              fw: FontWeight.w500,
              color: kMainColor,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: Row(
              children: [
                AppText(
                  text: "How to request diet from fitness coach ?",
                  color: kTitleColor,
                  size: 1.9 * SizeConfigure.textMultiplier!,
                  fw: FontWeight.w400,
                ),
                SizedBox(
                  width: 3.0*SizeConfigure.widthMultiplier!,
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: kTitleColor,
                  size: 2.4 * SizeConfigure.textMultiplier!,
                ),
              ],
            ),
          ),
          Divider(
            indent: 40,
            endIndent: 30,
            height: 30,
            thickness: 1,
            color: kGreyTextColor,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: Row(
              children: [
                AppText(
                  text: "How to change password ?",
                  color: kTitleColor,
                  size: 1.9 * SizeConfigure.textMultiplier!,
                  fw: FontWeight.w400,
                ),
                SizedBox(
                  width: 28.0*SizeConfigure.widthMultiplier!,
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: kTitleColor,
                  size: 2.4 * SizeConfigure.textMultiplier!,
                ),
              ],
            ),
          ),
          Divider(
            indent: 40,
            endIndent: 30,
            height: 30,
            thickness: 1,
            color: kGreyTextColor,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: Row(
              children: [
                AppText(
                  text: "How to order food ?",
                  color: kTitleColor,
                  size: 1.9 * SizeConfigure.textMultiplier!,
                  fw: FontWeight.w400,
                ),
                SizedBox(
                  width: 41.0*SizeConfigure.widthMultiplier!,
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: kTitleColor,
                  size: 2.4 * SizeConfigure.textMultiplier!,
                ),
              ],
            ),
          ),
          Divider(
            indent: 40,
            endIndent: 30,
            height: 30,
            thickness: 1,
            color: kGreyTextColor,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: Row(
              children: [
                AppText(
                  text: "How to request diet from nutritionist ?",
                  color: kTitleColor,
                  size: 1.9 * SizeConfigure.textMultiplier!,
                  fw: FontWeight.w400,
                ),
                SizedBox(
                  width: 5.0*SizeConfigure.widthMultiplier!,
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: kTitleColor,
                  size: 2.4 * SizeConfigure.textMultiplier!,
                ),
              ],
            ),
          ),
          Divider(
            indent: 40,
            endIndent: 30,
            height: 30,
            thickness: 1,
            color: kGreyTextColor,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: Row(
              children: [
                AppText(
                  text: "My diet plan is not yet approved",
                  color: kTitleColor,
                  size: 1.9 * SizeConfigure.textMultiplier!,
                  fw: FontWeight.w400,
                ),
                SizedBox(
                  width: 17.0*SizeConfigure.widthMultiplier!,
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: kTitleColor,
                  size: 2.4 * SizeConfigure.textMultiplier!,
                ),
              ],
            ),
          ),
          Divider(
            indent: 40,
            endIndent: 30,
            height: 30,
            thickness: 1,
            color: kGreyTextColor,
          ),
          SizedBox(
            height: 7.0*SizeConfigure.heightMultiplier!,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 200),
            child: AppText(
              text: "Contact us",
              size: 2.7 * SizeConfigure.textMultiplier!,
              fw: FontWeight.w500,
              color: kMainColor,
            ),
          ),
          SizedBox(
            height: 6.0*SizeConfigure.heightMultiplier!,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: InkWell(
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SecuritySettings()));
              },
              child: Row(
                children: [
                  Column(
                    children: [
                      AppText(
                        text: "My diet plan is not yet approved",
                        color: kTitleColor,
                        size: 1.9 * SizeConfigure.textMultiplier!,
                        fw: FontWeight.w400,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 60, top: 10),
                        child: AppText(
                          text: "24/7 Request a call back",
                          color: Colors.grey,
                          size: 1.8 * SizeConfigure.textMultiplier!,
                          fw: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 18.0*SizeConfigure.widthMultiplier!,
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: kTitleColor,
                    size: 2.4 * SizeConfigure.textMultiplier!,
                  ),
                ],
              ),
            ),
          ),
          Divider(
            indent: 40,
            endIndent: 30,
            height: 30,
            thickness: 1,
            color: kGreyTextColor,
          ),
        ],
      ),
    );
  }
}
