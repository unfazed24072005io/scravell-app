import 'package:flutter/material.dart';

import 'All_widget.dart';

class WalletDetailPage extends StatelessWidget {
  const WalletDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Color(0xFFED2128),
            elevation: 0,
            toolbarHeight: 60,
            leadingWidth: 100,
            leading: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              splashColor: Colors.white.withOpacity(0.1),
              highlightColor: Colors.transparent,
              child: Padding(
                padding: EdgeInsets.only(left: 16.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                      size: 18,
                    ),
                    SizedBox(width: 6),
                    Text(
                      "Back",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            title: Text(
              "My Wallet",
              style: TextStyle(color: Colors.white),
            ),
            centerTitle: true,
            actions: [
              IconButton(
                icon: Icon(Icons.more_horiz, color: Colors.white),
                onPressed: () {},
              ),
            ],
          ),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      height: 120,
                      width: double.infinity,
                      color: const Color(0xFFED2128),
                      padding: const EdgeInsets.symmetric(horizontal: 24.0),
                      child: const Text(
                        "Scravel Loyalty Card",
                        style: TextStyle(color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    Positioned(
                      top: 40,
                      left: 24,
                      right: 24,
                      child:
                    wallet_card(blance: "129",name1:"Soroush",name2:"Nasrpour",text1:"6037 9975",text2:"9598 3090"),
                    ),
                  ],
                ),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.0),
                  child: Padding(
                    padding: EdgeInsets.only(top: 150),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "TRANSACTION",
                          style: TextStyle(
                            fontSize: 13,
                            color: Color(0xFF8A8A8F),
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.5,
                          ),
                        ),
                        InkWell(
                          onTap: () {

                          },
                          child: Text(
                            "Mark as read",
                            style: TextStyle(
                              color: Color(0xFFED2128),
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.0),
                  child: Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Color(0xFFFFECEF),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Color(0xFFED2128),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Icon(
                                Icons.percent,
                                color: Colors.white,
                                size: 22,
                              ),
                            ),
                            Positioned(
                              top: -2,
                              right: -2,
                              child: Container(
                                width: 10,
                                height: 10,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFFFB800),
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: const Color(0xFFFFECEF),
                                    width: 1.5,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(width: 16),

                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Cashback 50%",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(height: 4),
                              Text(
                                "Get 50% cashback for the next top up",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey.shade600,
                                  height: 1.3,
                                ),
                              ),
                              SizedBox(height: 8),


                              InkWell(
                                onTap: () {},
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      "Top up now",
                                      style: TextStyle(
                                        color: Color(0xFFED2128),
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(width: 4),
                                    Icon(
                                      Icons.arrow_forward_ios,
                                      color: Color(0xFFED2128),
                                      size: 10,
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(height: 24),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.0),
                  child:
                  Text(
                    "YESTERDAY",
                    style: TextStyle(
                      fontSize: 13,
                      color: Color(0xFF8A8A8F),
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.5,
                    ),
                  ),
                ),

                SizedBox(height: 24),

                MyListView("Daily Cashback","8:00 AM","Promo",Color(0xFFFFAE58),Icons.today_outlined,""),
                MyListView("Use BLCK10 Promo Code","3:40 PM","Promo",Color(0xFF105D38),Icons.today_outlined,"BLCK10"),
                MyListView("Use BLCK10 Promo Code","3:40 PM","Promo",Color(0xFFFFD2A6),Icons.percent_outlined,""),
                MyListView("\$250 top up successfuly added","6:14 PM","info",Color(0xFF105D38),Icons.add_card,""),
              ],
            ),
          )
      );
  }

  Widget MyListView(String title,String time,String text,Color mycolor,IconData myicon,String text2){
    return  Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 10.0),
      child:
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
          width: 48,
          height: 48,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: mycolor,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(
              child: text2.isEmpty
                  ? Icon(
                myicon,
                color: Colors.white,
                size: 22,
              )
                  : Text(
                text2,
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'DMSans',
                    fontSize: 8,
                    fontWeight: FontWeight.bold
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left : 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,style: TextStyle(fontSize: 16,color: Color(0xFF030319)),),
                SizedBox(height: 5,),
                Text(time,style: TextStyle(fontSize: 12,color: Color(0xFF8F92A1)),),
              ],
            ),
          ),
          Spacer(),
          Container(
              padding: EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: Color(0xFF4CD080).withOpacity(0.08),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(text,style: TextStyle(fontSize: 15,
                  color: Color(0xFFE6232C)))),
        ],
      ),
    );
  }
}