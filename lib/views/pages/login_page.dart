import 'package:flutter/material.dart';
import 'package:travello/views/pages/app_section_page.dart';
import 'package:travello/views/pages/register_page.dart';
import 'package:travello/views/widgets/text_form_field_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var emailController = TextEditingController();
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
                  'Welcome back',
                  style: TextStyle(
                    color: Color(0xff252525),
                    fontSize: 36,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Text(
                  'sign in to access your account',
                  style: TextStyle(
                    color: Color(0xff252525),
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                const SizedBox(height: 80),
                TextFormFieldWidget(
                  controller: emailController,
                  isPassword: false,
                  hintText: 'Enter your email',
                  suffixIcon: 'assets/icons/email_icon.png',
                ),
                const SizedBox(height: 12),
                TextFormFieldWidget(
                  controller: passwordController,
                  isPassword: true,
                  hintText: 'Password',
                  suffixIcon: 'assets/icons/eye_off_icon.png',
                ),
                Row(
                  children: [
                    const SizedBox(width: 6),
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
                    Text(
                      'Remember me',
                      style: TextStyle(
                        fontSize: 9,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff000000),
                      ),
                    ),
                    const Spacer(),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Forget password ?',
                        style: TextStyle(
                          fontSize: 9,
                          fontWeight: FontWeight.w400,
                          color: Color(0xffFF3951),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 207),
                Row(
                  children: [
                    Expanded(
                      child: SizedBox(
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
                    ),
                  ],
                ),
                const SizedBox(height: 14),
                InkWell(
                  onTap: () {
                    Navigator.of(
                      context,
                    ).push(MaterialPageRoute(builder: (context) => RegisterPage()));
                  },
                  child: Text.rich(
                    TextSpan(
                      text: 'New member ',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff000000),
                      ),
                      children: [
                        TextSpan(
                          text: '? ',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff000000),
                          ),
                        ),
                        TextSpan(
                          text: 'Register now',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w700,
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
