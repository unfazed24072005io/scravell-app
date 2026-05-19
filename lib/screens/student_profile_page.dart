import 'package:flutter/material.dart';

class StudentProfilePage extends StatefulWidget {
  const StudentProfilePage({super.key});

  @override
  State<StudentProfilePage> createState() => _StudentProfilePageState();
}

class _StudentProfilePageState extends State<StudentProfilePage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _dobController = TextEditingController();
  String? _selectedGrade;

  final List<String> _grades = ['Grade 1', 'Grade 2', 'Grade 3', 'Grade 4', 'Grade 5'];

  Future<void> _selectDate(BuildContext context) async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime.now(),
    );
    if (picked != null) {
      setState(() {
        _dobController.text = "${picked.day}/${picked.month}/${picked.year}";
      });
    }
  }

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
                width: double.infinity,
                color: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Lets Create Your Child",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const Text(
                      "Profile !",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFED2128),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
              ),
        
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildLabel("Upload Picture"),
                    const SizedBox(height: 8),
                    Container(
                      width: double.infinity,
                      height: 120,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade300, style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.grey.shade50,
                      ),
                      child: InkWell(
                        onTap: () {
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.upload_sharp, color: Colors.grey[600], size: 28),
                            const SizedBox(height: 8),
                            Text(
                              "Upload images",
                              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.grey[700]),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              "JPEG, JPG or PNG (max. 5MB)",
                              style: TextStyle(fontSize: 11, color: Colors.grey[500]),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
        
                    _buildLabel("Child Name"),
                    const SizedBox(height: 8),
                    _buildTextField(controller: _nameController, hint: ""),
                    const SizedBox(height: 20),
        
                    _buildLabel("Grade"),
                    const SizedBox(height: 8),
                    _buildDropdownField(),
                    const SizedBox(height: 20),
        
                    _buildLabel("Email Address"),
                    const SizedBox(height: 8),
                    _buildTextField(controller: _emailController, hint: ""),
                    const SizedBox(height: 20),
        
                    _buildLabel("Date of Birth"),
                    const SizedBox(height: 8),
                    _buildDateField(context),
                    const SizedBox(height: 40),
        
                    SizedBox(
                      width: double.infinity,
                      height: 56,
                      child: ElevatedButton(
                        onPressed: () {
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFED2128),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          elevation: 0,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              "Submit Details",
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
                            ),
                            SizedBox(width: 8),
                            Icon(Icons.arrow_forward, color: Colors.white),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 40),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLabel(String text) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: Colors.grey[700],
      ),
    );
  }

  Widget _buildTextField({required TextEditingController controller, required String hint}) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hint,
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.grey.shade300),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.grey.shade300),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Color(0xFFED2128)),
        ),
      ),
    );
  }

  Widget _buildDropdownField() {
    return DropdownButtonFormField<String>(
      value: _selectedGrade,
      hint: Text("Select Grade", style: TextStyle(color: Colors.grey[600], fontSize: 15)),
      icon: const Icon(Icons.keyboard_arrow_down, color: Colors.black),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.grey.shade300),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.grey.shade300),
        ),
      ),
      items: _grades.map((String grade) {
        return DropdownMenuItem<String>(
          value: grade,
          child: Text(grade),
        );
      }).toList(),
      onChanged: (newValue) {
        setState(() {
          _selectedGrade = newValue;
        });
      },
    );
  }

  Widget _buildDateField(BuildContext context) {
    return TextField(
      controller: _dobController,
      readOnly: true,
      onTap: () => _selectDate(context),
      decoration: InputDecoration(
        hintText: "DD/MM/YYYY",
        hintStyle: TextStyle(color: Colors.grey[500]),
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        suffixIcon: const Icon(Icons.calendar_today_outlined, color: Colors.black),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.grey.shade300),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.grey.shade300),
        ),
      ),
    );
  }
}