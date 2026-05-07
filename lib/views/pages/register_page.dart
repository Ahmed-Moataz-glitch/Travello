import 'package:flutter/material.dart';
import 'package:travello/views/pages/app_section_page.dart';
import 'package:travello/views/pages/login_page.dart';
import 'package:travello/views/widgets/text_form_field_widget.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  var fullNameController = TextEditingController();
  var emailController = TextEditingController();
  var phoneNumberController = TextEditingController();
  var passwordController = TextEditingController();
  bool checkboxValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset('assets/icons/main_logo.png', width: 200, height: 152),
                const SizedBox(height: 26),
                Text(
                  'Get Started',
                  style: TextStyle(
                    color: Color(0xff252525),
                    fontSize: 36,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Text(
                  'by creating a free account',
                  style: TextStyle(
                    color: Color(0xff252525),
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                const SizedBox(height: 47),
                TextFormFieldWidget(
                  controller: fullNameController,
                  isPassword: false,
                  hintText: 'Full name',
                  suffixIcon: 'assets/icons/person_icon.png',
                ),
                const SizedBox(height: 10),
                TextFormFieldWidget(
                  controller: emailController,
                  isPassword: false,
                  hintText: 'Valid email',
                  suffixIcon: 'assets/icons/email_icon.png',
                ),
                const SizedBox(height: 10),
                TextFormFieldWidget(
                  controller: phoneNumberController,
                  isPassword: false,
                  hintText: 'Phone number',
                  suffixIcon: 'assets/icons/phone_icon.png',
                ),
                const SizedBox(height: 10),
                TextFormFieldWidget(
                  controller: passwordController,
                  isPassword: true,
                  hintText: 'Strong password',
                  suffixIcon: 'assets/icons/eye_off_icon.png',
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // const SizedBox(width: 6),
                    SizedBox(
                      width: 12,
                      height: 12,
                      child: Checkbox(
                        value: checkboxValue,
                        onChanged: (value) {
                          setState(() {
                            checkboxValue = value!;
                          });
                        },
                        activeColor: Color(0xffff3951),
                        side: BorderSide(width: 1, color: Color(0xffcbcbcb)),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusGeometry.circular(3),
                        ),
                      ),
                    ),
                    const SizedBox(width: 5),
                    Text.rich(
                    TextSpan(
                      text: 'By checking the box you agree to our ',
                      style: TextStyle(
                        fontSize: 9,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff000000),
                      ),
                      children: [
                        TextSpan(
                          text: 'Terms ',
                          style: TextStyle(
                            fontSize: 9,
                            fontWeight: FontWeight.w400,
                            color: Color(0xffFF3951),
                          ),
                        ),
                        TextSpan(
                          text: 'and ',
                          style: TextStyle(
                            fontSize: 9,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff000000),
                          ),
                        ),
                        TextSpan(
                          text: 'Conditions',
                          style: TextStyle(
                            fontSize: 9,
                            fontWeight: FontWeight.w400,
                            color: Color(0xffFF3951),
                          ),
                        ),
                      ],
                    ),
                  ),
                  ],
                ),
                const SizedBox(height: 133),
                SizedBox(
                  width: 350,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => AppSectionPage()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xffFF3951),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(10),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Next',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            color: Color(0xffffffff),
                          ),
                        ),
                        const SizedBox(width: 12),
                        Image.asset('assets/icons/arrow_icon.png'),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 14),
                InkWell(
                  onTap: () {
                    Navigator.of(
                      context,
                    ).push(MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                  child: Text.rich(
                    TextSpan(
                      text: 'Already a member? ',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff000000),
                      ),
                      children: [
                        TextSpan(
                          text: 'Login',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            color: Color(0xffFF3951),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
