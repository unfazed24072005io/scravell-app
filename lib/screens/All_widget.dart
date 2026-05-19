import 'package:flutter/material.dart';

class build_section_title extends StatelessWidget {
  final String title;
  const build_section_title({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0, top: 12.0),
      child: Text(
        title,
        style: const TextStyle(
            fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
      ),
    );
  }
}

class build_section_body extends StatelessWidget {
  final String text;
  const build_section_body({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Text(
        text,
        style: TextStyle(fontSize: 13, color: Colors.grey[800], height: 1.5),
        textAlign: TextAlign.justify,
      ),
    );
  }
}

class build_section_title_with_icon extends StatelessWidget {
  final String title;
  final bool showInfo;
  const build_section_title_with_icon({super.key, required this.title, required this.showInfo});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
                fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          if (showInfo)
            Icon(Icons.info_outline, color: Colors.grey[400], size: 18),
        ],
      ),
    );
  }
}

class build_text_chip extends StatelessWidget {
  final String text;
  const build_text_chip({super.key, required this.text});

  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        text,
        style: TextStyle(
            color: Colors.grey[800], fontSize: 13, fontWeight: FontWeight.w500),
      ),
    );
  }
}

class build_text_chip_icon extends StatelessWidget {
  final String text;
  final IconData? btnIcon;

  const build_text_chip_icon({super.key, required this.text, this.btnIcon});

  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (btnIcon != null) ...[
            Icon(btnIcon, color: Colors.grey[700], size: 18),
            const SizedBox(width: 8),
          ],
          const SizedBox(width: 8),
          Text(text, style: TextStyle(color: Colors.grey[800], fontSize: 13)),
        ],
      ),
    );
  }
}

class wallet_card extends StatelessWidget {
  final String blance;
  final String name1;
  final String name2;
  final String text1;
  final String text2;

  const wallet_card({super.key, required this.blance,
    required this.name1, required this.name2,
    required this.text1, required this.text2});

  Widget build(BuildContext context) {
    return
      Container(
        height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.15),
              blurRadius: 10,
              offset: const Offset(
                  0, 4),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Column(
              children: [
                Expanded(
                  flex: 5,
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: const Color(0xFFD61A21),
                      image: DecorationImage(
                        image: AssetImage(
                            'assets/images/pattern.png'),
                        fit: BoxFit.fill,
                        colorFilter: ColorFilter.mode(
                          const Color(0xFFD61A21).withOpacity(
                              0.9),
                          BlendMode.srcATop,
                        ),
                      ),
                    ),
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment
                          .end,
                      mainAxisAlignment: MainAxisAlignment
                          .center,
                      children: [
                        Text(
                          "Available Balance",
                          style: TextStyle(
                              color: Colors.white70,
                              fontSize: 12),
                        ),
                        SizedBox(height: 4),
                        Text(
                          "AED ${blance}",
                          style: TextStyle(color: Colors.white,
                              fontSize: 26,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),

                Expanded(
                  flex: 5,
                  child: Container(
                    width: double.infinity,
                    color: Color(0xFF1A1A1A),
                    padding: EdgeInsets.symmetric(
                        horizontal: 20, vertical: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment
                          .spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment
                              .start,
                          mainAxisAlignment: MainAxisAlignment
                              .center,
                          children: [
                            Text("${name1}", style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                height: 1.2)),
                            Text("${name2}", style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                height: 1.2)),
                          ],
                        ),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment
                              .end,
                          mainAxisAlignment: MainAxisAlignment
                              .center,
                          children: [
                            Text("${text1}", style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 1,
                                height: 1.2)),
                            Text("${text2}", style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 1,
                                height: 1.2)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ]
          ),
        ),
      );
  }
}