import 'package:flutter/material.dart';

import '../../../Models/model.dart';
import '../../../Widgets/app_text.dart';
import '../../../utilities/constant.dart';
import '../../../utilities/sizeconfigure.dart';

class DishesDetails extends StatefulWidget {
  const DishesDetails({super.key});

  @override
  State<DishesDetails> createState() => _DishesDetailsState();
}

class _DishesDetailsState extends State<DishesDetails> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: MediaQuery.of(context).size.height, // Set the desired height for your container
      child: ListView.builder(
          itemCount: DietList.length,
          itemBuilder: (context,int index){
            return Card(
              color: Colors
                  .transparent,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  )),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child:  Image.asset(
                          "assets/images/" + DietList[index]['image'],
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(width: 7.0*SizeConfigure.widthMultiplier!,),
                      Expanded(
                        flex:2,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    AppText(
                                        text:
                                        DietList[index]['title'],
                                        fw: FontWeight.w500,
                                        size: 2.2*SizeConfigure.textMultiplier!,
                                        color: kTitleColor
                                    ),
                                    Row(
                                      children: [
                                        Image.asset('assets/images/Vectorline.png'),
                                        SizedBox(width: 5,),
                                        AppText(
                                            text:
                                            DietList[index]['time'],
                                            size: 1.6*SizeConfigure.textMultiplier!,
                                            color:kMainColor
                                        ),
                                      ],
                                    ),
                                    // SizedBox(height: 1.0 *SizeConfigure.heightMultiplier! ,),
                                    AppText(
                                        text:
                                        DietList[index]['subtitle'],
                                        size: 1.7*SizeConfigure.textMultiplier!,
                                        fw: FontWeight.normal,
                                        color: Colors.grey
                                    ),
                                    AppText(
                                        text:
                                        DietList[index]['secondtitle'],
                                        size: 1.7*SizeConfigure.textMultiplier!,
                                        fw: FontWeight.normal,
                                        color: Colors.grey
                                    ),
                                    AppText(
                                        text:
                                        DietList[index]['thirdtitle'],
                                        size: 1.7*SizeConfigure.textMultiplier!,
                                        fw: FontWeight.normal,
                                        color:Colors.grey
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                ],
              ),
            );
          }
      ),
    ) ;
  }
}
