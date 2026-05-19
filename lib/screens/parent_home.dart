import 'package:flutter/material.dart';

import 'All_widget.dart';

class ParentHome extends StatelessWidget {
  const ParentHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          "Museum of the Future",
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
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 280,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          image: DecorationImage(
                            image: AssetImage('assets/images/parent_home.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        height: 280,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.black.withOpacity(0.2),
                              Colors.black.withOpacity(0.6),
                            ],
                          ),
                        ),
                      ),

                      Positioned(
                        top: 16,
                        left: 16,
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 18,
                          child: IconButton(
                            padding: EdgeInsets.zero,
                            icon: Icon(
                                Icons.keyboard_arrow_left, color: Colors.black,
                                size: 24),
                            onPressed: () {},
                          ),
                        ),
                      ),

                      Positioned(
                        top: 16,
                        right: 16,
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 18,
                          child: IconButton(
                            padding: EdgeInsets.zero,
                            icon: Icon(
                                Icons.favorite_border, color: Colors.black,
                                size: 20),
                            onPressed: () {},
                          ),
                        ),
                      ),

                      Positioned(
                        bottom: 16,
                        left: 16,
                        right: 100,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Museum of the Future",
                              style: TextStyle(color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 4),
                            Row(
                              children: [
                                Icon(Icons.location_on, color: Colors.white70,
                                    size: 14),
                                SizedBox(width: 4),
                                Text(
                                  "Malang, East Java",
                                  style: TextStyle(
                                      color: Colors.white70, fontSize: 12),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),

                      Positioned(
                        bottom: 16,
                        right: 16,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.black45,
                              border: Border.all(
                                  color: Colors.white, width: 1.5),
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/parent_home.png'),
                                fit: BoxFit.cover,
                                colorFilter: ColorFilter.mode(
                                  Colors.black45,
                                  BlendMode.darken,
                                ),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "5+",
                                style: TextStyle(color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 20),

                  build_section_title(title: "Description"),
                  RichText(
                    text: TextSpan(
                      style: TextStyle(
                          fontSize: 13, color: Colors.grey[700], height: 1.4),
                      children: [
                        const TextSpan(
                          text: "The Museum of the Future is not just a museum, it's an interactive journey through time, technology, and imagination. Designed to inspire the next generation of thinkers, innovators, and explorers, the architectural marvel invites students ... ",
                        ),
                        TextSpan(
                          text: "View More",
                          style: TextStyle(color: const Color(0xFFED2128),
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 20),
                  build_section_title_with_icon(
                      title: "Trip Date", showInfo: true),
                  build_text_chip(text: "15 Dec - 28 Dec 2023"),

                  SizedBox(height: 20),
                  build_section_title_with_icon(
                      title: "Trip Time", showInfo: true),
                  Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: [
                      build_text_chip(text: "10:00 AM"),
                      build_text_chip(text: "12:00 AM"),
                      build_text_chip(text: "13:00 PM"),
                      build_text_chip(text: "14:00 PM"),
                      build_text_chip(text: "15:00 PM"),
                    ],
                  ),

                  SizedBox(height: 20),
                  build_section_title_with_icon(
                      title: "Facilities Selected", showInfo: false),
                  build_text_chip_icon(text: "Facilities Selected",
                      btnIcon: Icons.restaurant_menu_sharp),

                  SizedBox(height: 20),
                  build_section_title_with_icon(
                      title: "Chosen Grade", showInfo: false),
                  build_text_chip(text: "Senior"),
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(
                left: 20, right: 20, bottom: 24, top: 12),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border(top: BorderSide(color: Colors.grey.shade100)),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Select the consent status",
                  style: TextStyle(color: Colors.grey[500], fontSize: 13),
                ),
                const SizedBox(height: 12),
                Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFFE5E5E5),
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12)),
                          ),
                          child: const Text(
                            "Not Going",
                            style: TextStyle(color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 16),
                    // Approve बटन (लाल)
                    Expanded(
                      child: SizedBox(
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFFED2128),
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12)),
                          ),
                          child: const Text(
                            "Approve",
                            style: TextStyle(color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}