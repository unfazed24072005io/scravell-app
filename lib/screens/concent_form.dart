import 'package:flutter/material.dart';

import 'All_widget.dart';

class ConcentForm extends StatelessWidget {
  const ConcentForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xFFED2128),
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
            padding: const EdgeInsets.only(left: 16.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: const [
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
        title: const Text(
          "Concent Form",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.more_horiz, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Concent form",
                    style: TextStyle(fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  const SizedBox(height: 4),
                  Text("Last updated march 12,2012",
                      style: TextStyle(fontSize: 12, color: Colors.black26)),
                  const SizedBox(height: 24),

                  build_section_title(title:"Introduction"),
                  build_section_body(text:
                  "Vulputate odio turpis mattis porttitor. Risus scelerisque sit sagittis urna. At sem est aenean scelerisque velit id odio urna. Amet urna sociis sed tincidunt ut. Dui posuere mattis diam convallis nullam dictum. Morbi velit feugiat nibh viverra ornare aliquam libero. Accumsan condimentum nulla donec vel tortor. Orci nisi commodo massa at. Lobortis etiam nulla diam cursus elit id consequat ut.",
                  ),

                  const SizedBox(height: 24),
                  build_section_title(title:"Service provider"),
                  build_section_body(text:
                  "Nulla morbi auctor lorem tempus elementum rhoncus. Augue tortor habitant suspendisse ultricies ac feugiat amet cursus mattis.",
                  ), build_section_body(text:
                  "Orci nisi commodo massa at. Lobortis etiam nulla diam cursus elit id consequat ut.",
                  ), build_section_body(text:
                  "Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed qu.",
                  ),

                  const SizedBox(height: 24),
                  build_section_title(title:"Age requirements"),
                  build_section_body(text:
                  "Sed egestas mauris lacus dignissim aenean vel. Imperdiet eu blandit gravida elementum hendrerit felis aliquet et hac. Non mi fringilla duis in non. Mi eros a quam suspendisse. Nibh tortor tincidunt in nulla convallis hendrerit mauris eleifend.",
                  ),
                  build_section_body(text:
                    "Lectus eget sapien nisl egestas tincidunt nunc diam. Turpis vel ipsum vestibulum amet nibh. In nunc elementum accumsan interdum eu commodo suspendisse. Viverra egestas nisl ac porttitor. Nullam pretium duis lacus at. Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatu.",
                  ),

                  build_section_title(title:"Sign to complete the concent"),
                  const SizedBox(height: 8),

                  Container(
                    width: double.infinity,
                    height: 180,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.grey.shade50,
                    ),
                    child: Center(
                      child: Text(
                        "Sign in this box",
                        style: TextStyle(color: Colors.grey[400], fontSize: 14),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(
                left: 24.0, right: 24.0, bottom: 30.0, top: 10.0),
            child: SizedBox(
              width: double.infinity,
              height: 54,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFA6A6A6),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  elevation: 0,
                ),
                child: const Text(
                  "Agree",
                  style: TextStyle(fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
