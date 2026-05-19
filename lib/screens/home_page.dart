import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'All_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: Colors.white,
                padding: const EdgeInsets.only(
                    left: 24.0, right: 24.0, top: 16.0, bottom: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [

                        const CircleAvatar(
                          radius: 24,
                          backgroundColor: Colors.grey,
                          backgroundImage: AssetImage(
                              'assets/images/main-dp.jpg'),
                        ),
                        SizedBox(width: 12),

                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                  "Hi, Parents",
                                  style: TextStyle(
                                      fontFamily: 'SFProDisplay',
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400,
                                      height: 26 / 18,
                                      letterSpacing: 0,
                                      color: Color(0xFF151111)
                                  )
                              ),
                              SizedBox(height: 2),
                              Text(
                                "Abu Dhabi",
                                style: TextStyle(
                                    fontFamily: 'SFProDisplay',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    height: 26 / 12,
                                    letterSpacing: 0,
                                    color: Color(0xFF151111)
                                ),
                              ),
                            ],
                          ),
                        ),

                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            CircularButton(
                              icon: Icons.hexagon_outlined,
                              onTap: () {},
                            ),
                            SizedBox(width: 12),

                            Stack(
                              clipBehavior: Clip.none,
                              children: [
                                CircularButton(
                                  icon: Icons.notifications_none_outlined,
                                  onTap: () {},
                                ),

                                Positioned(
                                  top: -2,
                                  right: -2,
                                  child: Container(
                                    padding: const EdgeInsets.all(4),
                                    decoration: const BoxDecoration(
                                      color: Color(0xFF0056C6),
                                      shape: BoxShape.circle,
                                    ),
                                    constraints: const BoxConstraints(
                                      minWidth: 16,
                                      minHeight: 16,
                                    ),
                                    child: const Center(
                                      child: Text(
                                        "5",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 9,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),

                    SizedBox(height: 5),
                    Text(
                      "Explore Amazing",
                      style: TextStyle(
                          fontFamily: 'SFProDisplay',
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF151111)
                      ),
                    ),
                    Text(
                      "Offers !",
                      style: TextStyle(
                          fontFamily: 'SFProDisplay',
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFFE6232C)
                      ),
                    ),

                    SizedBox(height: 20),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 220,
                          child: Stack(
                            children: [
                              wallet_card(blance: "129",
                                  name1: "Soroush",
                                  name2: "Nasrpour",
                                  text1: "6037 9975",
                                  text2: "9598 3090"),
                            ],
                          ),
                        ),
                      ],
                    ),

                    Row(
                      children: [
                        Text("Promo & Discount", style: TextStyle(
                            fontFamily: 'SFProDisplay',
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            height: 1.40,
                            letterSpacing: 0,
                            color: Color(0xFF030319)
                        ),),
                        Spacer(),
                        Text("See More", style: TextStyle(
                            fontFamily: 'SFProDisplay',
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            height: 1.40,
                            letterSpacing: 0,
                            color: Color(0xFF4CD080)
                        ),)
                      ],
                    ),

                    SizedBox(height: 10),

                    PromoSliderSection(),

                    SizedBox(height: 10),

                    const Text("Upcoming Trips", style: TextStyle(
                        fontFamily: 'SFProDisplay',
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        height: 1.40,
                        letterSpacing: 0,
                        color: Color(0xFF030319)
                    )),
                    SizedBox(height: 10),

                    Stack(
                      children: [
                        Container(
                          height: 200,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            image: DecorationImage(
                              image: AssetImage(
                                  'assets/images/homeimg.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),

                        Positioned(
                          top: 15,
                          left: 20,
                          child: Container(
                            padding: EdgeInsets.all(6),
                            decoration: BoxDecoration(
                              color: Color(0xFFFFF0D8),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 5,right: 5),
                              child: Row(
                                children: [
                                  SvgPicture.asset(
                                    'assets/images/Vector.svg',
                                    width: 10,
                                    height: 10,
                                    colorFilter: const ColorFilter.mode(Color(0xFFD27C4A), BlendMode.srcIn),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Text("Pending",style: TextStyle(
                                    fontFamily: 'SFProDisplay',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    height: 16 / 12,
                                    letterSpacing: 0,
                                    color: Color(0xFFD27C4A))),
                                  ),
                                ],
                              ),
                            )),
                        ),

                        Positioned(
                          top: 15,
                          right: 20,
                          child: Container(
                              padding: EdgeInsets.all(6),
                              decoration: BoxDecoration(
                                color: Color(0xFF000000).withOpacity(0.15),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 5,right: 5),
                                child: Row(
                                  children: [
                                    SvgPicture.asset(
                                      'assets/images/star-fill.svg',
                                      width: 10,
                                      height: 10,
                                      colorFilter: const ColorFilter.mode(Color(0xFFFFFFFF), BlendMode.srcIn),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 10),
                                      child: Text("4.1",style: TextStyle(
                                          fontFamily: 'SFProDisplay',
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          height: 16 / 12,
                                          letterSpacing: 0,
                                          color: Color(0xFFFFFFFF))),
                                    ),
                                  ],
                                ),
                              )),
                        ),

                        Positioned(
                          bottom: 20,
                            left: 20,
                            child: Text("Museum of The Future", style: TextStyle(
                                fontFamily: 'SFProDisplay',
                                fontSize: 28,
                                fontWeight: FontWeight.w600,
                                height: 33 / 28,
                                letterSpacing: 0,
                                color: Color(0xFFFFFFFF)
                            )),)
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }


  Widget CircularButton(
      {required IconData icon, required VoidCallback onTap}) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(24),
      child: Container(
        width: 44,
        height: 44,
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.06),
              blurRadius: 8,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Icon(
          icon,
          color: Colors.black87,
          size: 22,
        ),
      ),
    );
  }
}

class PromoSliderSection extends StatefulWidget {
  const PromoSliderSection({super.key});

  @override
  State<PromoSliderSection> createState() => _PromoSliderSectionState();
}

class _PromoSliderSectionState extends State<PromoSliderSection> {
  int _currentPage = 0;

  final PageController _pageController = PageController(viewportFraction: 0.83);

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 160,
          child: Align(
            alignment: Alignment.centerLeft,
            child: PageView(
              controller: _pageController,
              padEnds: false,
              physics: const BouncingScrollPhysics(),
              onPageChanged: (int page) {
                setState(() {
                  _currentPage = page;
                });
              },
              children: [
                FirstCard(),
                SecondCard(),
                FirstCard(),
                SecondCard(),
              ],
            ),
          ),
        ),

        const SizedBox(height: 16),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(4, (index) {
            return AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              margin: const EdgeInsets.symmetric(horizontal: 3.0),
              width: _currentPage == index ? 24.0 : 6.0,
              height: 6.0,
              decoration: BoxDecoration(
                color: _currentPage == index
                    ? const Color(0xFFED2128)
                    : const Color(0xFFE0E0E0),
                borderRadius: BorderRadius.circular(3),
              ),
            );
          }),
        ),
      ],
    );
  }

  Widget FirstCard() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(
        color: const Color(0xFF012229),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "30% OFF",
                  style: TextStyle(fontFamily: 'SFProDisplay',
                      fontSize: 12,
                      color: Colors.grey.shade400,
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 6),
                const Text(
                  "Black Friday deal",
                  style: TextStyle(fontFamily: 'SFProDisplay',
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 12),
                Text(
                  "Get discount for every topup,\ntransfer and payment",
                  style: TextStyle(fontFamily: 'SFProDisplay',
                      fontSize: 10,
                      color: Colors.grey.shade400,
                      height: 1.4),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: -10,
            right: -10,
            child: Transform.rotate(
              angle: -0.1,
              child: Container(
                width: 110,
                height: 110,
                decoration: BoxDecoration(
                  color: const Color(0xFF1AD57E),
                  borderRadius: BorderRadius.circular(24),
                ),
                child: const Center(
                  child: Text(
                    "30%",
                    style: TextStyle(fontFamily: 'SFProDisplay',
                        fontSize: 22,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 85,
            right: 25,
            child: Container(
              width: 16,
              height: 16,
              decoration: const BoxDecoration(
                  color: Color(0xFFFFCC99), shape: BoxShape.circle),
            ),
          ),
        ],
      ),
    );
  }

  Widget SecondCard() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: const Color(0xFFFFD5A4),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Special\nToday !",
            style: TextStyle(fontFamily: 'SFProDisplay',
                fontSize: 20,
                color: Color(0xFF202020),
                fontWeight: FontWeight.bold,
                height: 1.2),
          ),
          const SizedBox(height: 12),
          Text(
            "Get discount for every\ntransfer and...",
            style: TextStyle(fontFamily: 'SFProDisplay',
                fontSize: 11,
                color: Colors.grey.shade800,
                height: 1.4),
          ),
        ],
      ),
    );
  }
}
