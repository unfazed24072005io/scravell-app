import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StepFourScreen extends StatefulWidget {
  const StepFourScreen({super.key});

  @override
  State<StepFourScreen> createState() => _StepFourScreenState();
}

class _StepFourScreenState extends State<StepFourScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isPasswordVisible = false;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _handleLogin() {
    String email = _emailController.text.trim();
    String password = _passwordController.text.trim();

    if (email.isEmpty || password.isEmpty) {
      _showMessage('Please enter email and password');
      return;
    }

    if (!email.contains('@') || !email.contains('.')) {
      _showMessage('Please enter a valid email');
      return;
    }

    if (password.length < 4) {
      _showMessage('Password must be at least 4 characters');
      return;
    }

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Login Successful!'),
        content: Text('Welcome back, $email'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              _showMessage('You are now logged in!');
            },
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  void _showMessage(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Stack(
            children: [
              // CREAM BACKGROUND (Bottom section)
              Container(
                color: const Color(0xFFFDF8F0),
              ),
              // TEAL GRADIENT TOP with SEMICIRCULAR CUTOUT
              ClipPath(
                clipper: SemicircleDividerClipper(),
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xFF2FDD92),
                        Color(0xFF2F86A6),
                      ],
                    ),
                  ),
                  child: SafeArea(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 40),
                        // Welcome Text - LEFT ALIGNED
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Welcome 🖖',
                                style: TextStyle(
                                  fontFamily: 'SF Pro Display',
                                  fontSize: 39,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                                textAlign: TextAlign.left,
                              ),
                              const SizedBox(height: 12),
                              Text(
                                'Lorem ipsum dolor sit amet, consetetur\nsadipscing elitr, sed diam nonumy eirmod\ntempor',
                                style: TextStyle(
                                  fontFamily: 'SF Pro Display',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white.withOpacity(0.9),
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ],
                          ),
                        ),
                        const Spacer(),
                      ],
                    ),
                  ),
                ),
              ),
              // WHITE GLASS CARD & LOGIN FORM (Bottom section)
              SafeArea(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(height: constraints.maxHeight * 0.45),
                      // White Glass Card
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 30),
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.95),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.05),
                              blurRadius: 20,
                              offset: const Offset(0, 5),
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            // Login Tab - CENTERED
                            Column(
                              children: [
                                Text(
                                  'Login',
                                  style: TextStyle(
                                    fontFamily: 'SF Pro Display',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: const Color(0xFF1D2226),
                                  ),
                                ),
                                Container(
                                  width: 50,
                                  height: 2,
                                  margin: const EdgeInsets.only(top: 8),
                                  color: const Color(0xFFFF6961),
                                ),
                              ],
                            ),
                            const SizedBox(height: 30),
                            // Email Field
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: const Color(0xFFE5E5EA)),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: TextField(
                                controller: _emailController,
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                  hintText: 'User ID',
                                  hintStyle: TextStyle(
                                    fontFamily: 'SF Pro Display',
                                    fontSize: 15,
                                    color: Colors.black.withOpacity(0.25),
                                  ),
                                  border: InputBorder.none,
                                  contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 16,
                                    vertical: 16,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 16),
                            // Password Field
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: const Color(0xFFE5E5EA)),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: TextField(
                                controller: _passwordController,
                                obscureText: !_isPasswordVisible,
                                decoration: InputDecoration(
                                  hintText: 'Password',
                                  hintStyle: TextStyle(
                                    fontFamily: 'SF Pro Display',
                                    fontSize: 15,
                                    color: Colors.black.withOpacity(0.25),
                                  ),
                                  border: InputBorder.none,
                                  contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 16,
                                    vertical: 16,
                                  ),
                                  suffixIcon: IconButton(
                                    icon: Icon(
                                      _isPasswordVisible
                                          ? Icons.visibility
                                          : Icons.visibility_off,
                                      size: 20,
                                      color: const Color(0xFF1C1C1E),
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        _isPasswordVisible = !_isPasswordVisible;
                                      });
                                    },
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 12),
                            // Forgot Password - CENTERED
                            Center(
                              child: TextButton(
                                onPressed: () {
                                  _showMessage('Reset password link sent!');
                                },
                                style: TextButton.styleFrom(
                                  padding: EdgeInsets.zero,
                                ),
                                child: Text(
                                  'Forgot Password?',
                                  style: GoogleFonts.poppins(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xFFFF9500),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 30),
                            // Login Button
                            SizedBox(
                              width: double.infinity,
                              height: 47,
                              child: ElevatedButton(
                                onPressed: _handleLogin,
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xFFE6232C),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                ),
                                child: Text(
                                  'LOGIN',
                                  style: TextStyle(
                                    fontFamily: 'SF Pro Display',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 40),
                      // Logo - SMALLER
                      Image.asset(
                        'assets/images/logo.png',
                        height: 40,
                        errorBuilder: (context, error, stackTrace) {
                          return Text(
                            'Logo',
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          );
                        },
                      ),
                      const SizedBox(height: 30),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

// Custom Clipper for Semicircular Divider - VISIBLE NOW
class SemicircleDividerClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    
    // Start at top-left
    path.moveTo(0, 0);
    
    // Line to top-right
    path.lineTo(size.width, 0);
    
    // Line to bottom-right
    path.lineTo(size.width, size.height);
    
    // Create a VISIBLE downward semicircle arc
    // The arc starts from right edge and curves down to left edge
    final double arcDepth = size.height * 0.25; // 25% of screen height for visible arc
    
    path.quadraticBezierTo(
      size.width / 2,           // Center X
      size.height + arcDepth,   // Curve downward
      0,                        // End X (left edge)
      size.height,              // End Y (same height as right edge)
    );
    
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}