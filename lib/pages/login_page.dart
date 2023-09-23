import 'package:flutter/material.dart';
import 'package:konbusters/styles/app_texts.dart';


import '../components/app_text_field.dart';
import '../components/toolbar.dart';
import '../config/app_routes.dart';
import '../config/app_strings.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(title: AppStrings.login),
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: EdgeInsets.all(24),
            child: Column(
              children: [
                Spacer(),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    AppStrings.hellowelcome,
                    style: AppText.header1,
                    // style: TextStyle(
                    //   fontSize: 22,
                    //   fontWeight: FontWeight.bold,
                    //   color: Colors.white,
                    // ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    AppStrings.loginToContinue,
                    style: AppText.body1,
                    // style: TextStyle(
                    //   color: Colors.white,
                    // ),
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                AppTextField(hint: AppStrings.insta),
                SizedBox(
                  height: 10,
                ),
                AppTextField(hint: AppStrings.password),
                SizedBox(
                  height: 32,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 48,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamedAndRemoveUntil(
                          AppRoutes.main, (route) => false);
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.amber,
                      foregroundColor: Colors.black,
                    ),
                    child: Text(AppStrings.login),
                  ),
                ),
                Spacer(),
                Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
