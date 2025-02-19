import 'package:flutter/material.dart';
import 'package:heathfit/Widgets/app_text.dart';
import 'package:heathfit/utilities/constant.dart';
import 'package:heathfit/utilities/sizeconfigure.dart';

import 'Profile_Screen/help_screen.dart';
import 'Profile_Screen/settings_screen/settings_screen.dart';
import 'Profile_Screen/transaction_Screen.dart';
import 'Profile_Screen/wallet_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kButtonTextColor,
      body: Column(
        children: [
          SizedBox(height:  7.5*SizeConfigure.heightMultiplier!),
          Padding(
            padding: const EdgeInsets.only(left: 305),
            child: Icon(Icons.more_vert, color: kGreyTextColor),
          ),
          SizedBox(height:  7.5*SizeConfigure.heightMultiplier!),
          Padding(
            padding: const EdgeInsets.only(left: 60),
            child: Row(
              children: [
                Image.asset('assets/images/profileimg.png'),
                Container(
                  height:  12.5*SizeConfigure.heightMultiplier!, // Adjust the height
                  child: VerticalDivider(
                    color: kGreyTextColor,
                    thickness: 1, // Adjust the thickness
                    width: 20,  // Adjust the width
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: AppText(
                        text: "John Shaw",
                        size: 2.5*SizeConfigure.textMultiplier!,
                        fw: FontWeight.bold,
                        color: kTitleColor,),
                    ),
                    SizedBox(height: 3,),
                    Padding(
                      padding: const EdgeInsets.only(right: 50),
                      child: AppText(
                        text: "Joined",
                      size: 1.5*SizeConfigure.textMultiplier!,
                      fw: FontWeight.w400,
                      color: kGreyTextColor,),
                    ),
                    SizedBox(height: 3,),
                    Padding(
                      padding: const EdgeInsets.only(right: 5),
                      child: AppText(
                        text: "2 month ago",
                        size: 2.0*SizeConfigure.textMultiplier!,
                        fw: FontWeight.w300,
                        color: kTitleColor,),
                    ),
                    SizedBox(height: 5,),
                    Padding(
                      padding: const EdgeInsets.only(right: 40),
                      child: Container(
                        decoration: BoxDecoration(
                          color: kMainColor,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 12,right: 12,bottom: 2,top: 2),
                          child: AppText(
                            text: "3.8",
                            color: kButtonTextColor,
                            size: 1.5 * SizeConfigure.textMultiplier!,
                            fw: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

              ],
            ),
          ),
          SizedBox(height: 7.5*SizeConfigure.heightMultiplier!,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                  child: Padding(
                      padding: const EdgeInsets.only(left: 40),
                      child: InkWell(
                        onTap: (){
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>WalletScreen()));
                        },
                        child: Container(
                            height: 15.4*SizeConfigure.heightMultiplier!,
                            decoration: BoxDecoration(
                                color: Color(0xff232323),
                                borderRadius: BorderRadius.all(Radius.circular(20))
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Column(
                                children: [
                                  Image.asset('assets/images/wallet.png',),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5),
                                    child: AppText(text: "Wallet",
                                      size: 1.8*SizeConfigure.textMultiplier!,
                                    fw: FontWeight.w400,
                                    color: Colors.grey),
                                  )
                                ],
                              ),
                            )
                        ),
                      )
                  )),
              SizedBox(width: 8.0*SizeConfigure.widthMultiplier!,),
              Expanded(
                  child: InkWell(
                    onTap: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>TransactionScreen()));
                    },
                    child: Stack(
                      children: [
                        Container(
                          height: 15.4 * SizeConfigure.heightMultiplier!,
                          width: 35.0*SizeConfigure.widthMultiplier!,
                          decoration: BoxDecoration(
                            color: Color(0xff232323),
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 24),
                            child: Column(
                              children: [
                                Image.asset('assets/images/transaction.png', height: 40,),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          top: 20,
                          right: 10,
                          left: 0,
                          child: Container(
                            width: 10, // Adjust the size of the dot
                            height: 10, // Adjust the size of the dot
                            child: Icon(
                              Icons.circle_rounded,
                              size: 13,
                              color: kMainColor,
                            ),
                          ),
                        ),
                        SizedBox(height: 5,),
                        Positioned(
                          bottom: 25,
                          left: 20,
                          child: AppText(
                            text: "Transactions",
                            size: 1.8 * SizeConfigure.textMultiplier!,
                            fw: FontWeight.w400,
                            color: Colors.grey,
                          ),
                        )
                      ],
                    ),
                  )
              )
            ],
          ),
          SizedBox(height: 6.0*SizeConfigure.heightMultiplier!),
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: InkWell(
              onTap: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SettingScreen()));
              },
              child: Row(
                children: [
                  Icon(Icons.settings,color: kTitleColor,size: 3.4*SizeConfigure.textMultiplier!,),
                  SizedBox(width:4.2*SizeConfigure.widthMultiplier!, ),
                  AppText(text: "Settings",
                  color: kTitleColor,
                  size: 2.3*SizeConfigure.textMultiplier!,
                  fw: FontWeight.w400,),
                  SizedBox(width: 39.0*SizeConfigure.widthMultiplier!,),
                  Icon(Icons.arrow_forward_ios,color: kTitleColor,size: 2.4*SizeConfigure.textMultiplier!,),

                ],
              ),
            ),
          ),
          Divider(
            indent: 40,
            endIndent: 40,
            height: 30,
            thickness: 1,
            color: kGreyTextColor,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: InkWell(
              onTap: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HelpScreen()));
              },
              child: Row(
                children: [
                  Icon(Icons.question_mark,color: kTitleColor,size: 3.4*SizeConfigure.textMultiplier!,),
                  SizedBox(width: 4.9*SizeConfigure.widthMultiplier!,),
                  AppText(text: "Help",
                    color: kTitleColor,
                    size: 2.3*SizeConfigure.textMultiplier!,
                    fw: FontWeight.w400,),
                  SizedBox(width: 47.2*SizeConfigure.widthMultiplier!,),
                  Icon(Icons.arrow_forward_ios,color: kTitleColor,size: 2.4*SizeConfigure.textMultiplier!,),
                ],
              ),
            ),
          ),
          Divider(
            indent: 40,
            endIndent: 40,
            height: 30,
            thickness: 1,
            color: kGreyTextColor,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: Row(
              children: [
                Icon(Icons.privacy_tip,color: kTitleColor,size: 3.4*SizeConfigure.textMultiplier!,),
                SizedBox(width: 5.2*SizeConfigure.widthMultiplier!,),
                AppText(text: "Privacy Policy",
                  color: kTitleColor,
                  size: 2.3*SizeConfigure.textMultiplier!,
                  fw: FontWeight.w400,),
                SizedBox(width: 24.2*SizeConfigure.widthMultiplier!,),
                Icon(Icons.arrow_forward_ios,color: kTitleColor,size: 2.4*SizeConfigure.textMultiplier!,),

              ],
            ),
          ),
          Divider(
            indent: 40,
            endIndent: 40,
            height: 30,
            thickness: 1,
            color: kGreyTextColor,
          ),
          SizedBox(height: 4.3*SizeConfigure.heightMultiplier!,),
          AppText(text: "Version:2.345.775.34",
          color: kGreyTextColor,
          size: 1.8*SizeConfigure.textMultiplier!,
          fw: FontWeight.w300,)

        ],
      ),
    );
  }
}
