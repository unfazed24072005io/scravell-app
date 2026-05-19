import 'package:flutter/material.dart';

class PaymentSuccessPage extends StatelessWidget {
  const PaymentSuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFED2128),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Center(
                child: SingleChildScrollView(
                  padding: EdgeInsets.symmetric(horizontal: 24.0),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 20.0),
                        padding: EdgeInsets.all(24.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(height: 10),
                            Container(
                              padding: EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                color: Color(0xFFE2F7EE),
                                shape: BoxShape.circle,
                              ),
                              child: Icon(
                                Icons.check_circle,
                                color: Color(0xFF00A86B),
                                size: 36,
                              ),
                            ),
                            SizedBox(height: 16),
                            Text(
                              "Payment Success!",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(height: 30),

                            _build_dashed_line(),
                            SizedBox(height: 24),

                            _build_receipt_row("References Number", "000085752257"),
                            _build_receipt_row("Date", "Mar 22, 2023"),
                            _build_receipt_row("Time", "07:80 AM"),
                            _build_receipt_row("Payment Method", "Credit Card"),

                            SizedBox(height: 8),
                            Divider(color: Colors.black12),
                            SizedBox(height: 8),

                            _build_receipt_row("Amount", "AED 120", isAmount: true),

                            SizedBox(height: 16),
                            Divider(color: Colors.black12),
                            SizedBox(height: 24),

                            OutlinedButton.icon(
                              onPressed: () {

                              },
                              icon: Icon(Icons.vertical_align_bottom_sharp, color: Colors.black, size: 20),
                              label: Text(
                                "Get PDF Receipt",
                                style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600, fontSize: 14),
                              ),
                              style: OutlinedButton.styleFrom(
                                minimumSize: Size(double.infinity, 50),
                                side: BorderSide(color: Colors.grey.shade200),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                          ],
                        ),
                      ),

                      Positioned(
                        left: -12,
                        top: 154,
                        child: Container(
                          width: 24,
                          height: 24,
                          decoration: BoxDecoration(
                            color: Color(0xFFED2128),
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                      Positioned(
                        right: -12,
                        top: 154,
                        child: Container(
                          width: 24,
                          height: 24,
                          decoration: BoxDecoration(
                            color: Color(0xFFED2128),
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.only(left: 24.0, right: 24.0, bottom: 30.0, top: 10.0),
              child: SizedBox(
                width: double.infinity,
                height: 56,
                child: ElevatedButton(
                  onPressed: () {
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: Text(
                    "Back to Home",
                    style: TextStyle(
                      color: Color(0xFFED2128),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _build_receipt_row(String label, String value, {bool isAmount = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: 14,
              color: isAmount ? Colors.grey[700] : Colors.grey[600],
              fontWeight: isAmount ? FontWeight.w500 : FontWeight.normal,
            ),
          ),
          Text(
            value,
            style: TextStyle(
              fontSize: isAmount ? 18 : 14,
              fontWeight: isAmount ? FontWeight.bold : FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  Widget _build_dashed_line() {
    return Row(
      children: List.generate(
        30,
            (index) => Expanded(
          child: Container(
            color: index % 2 == 0 ? Colors.transparent : Colors.grey.shade300,
            height: 1.5,
          ),
        ),
      ),
    );
  }
}
