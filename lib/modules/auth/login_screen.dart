import 'package:apkmagang/controller/user/user_controller.dart';
import 'package:apkmagang/gen/assets.gen.dart';
import 'package:apkmagang/routes/app_routes.dart';

import 'package:apkmagang/utils/constant.dart';
import 'package:apkmagang/widgets/button/form_input_button.dart';
import 'package:apkmagang/widgets/textfields/form_input_textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var usernameInputController = TextEditingController();
  var passwordInputController = TextEditingController();

  final UserController _userController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      //appBar: ,
      body: Stack(
        children: [
          //GAMBAR
          Positioned(
              child: Image.asset(
            Assets.image.imageBg1.path,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          )),

          //FORM
          Positioned(
              child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Container(
              color: Colors.transparent,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(
                horizontal: setWidth(60),
                vertical: setHeight(60),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: setHeight(500),
                  ),

                  //SIGN IN
                  Text(
                    'Login',
                    style: styleTitle.copyWith(
                      fontSize: setFontSize(100),
                      color: Color(0xFFFFFFFF),
                    ),
                  ),
                  SizedBox(
                    height: setHeight(50),
                  ),

                  //USERNAME/EMAIL
                  FormInputTextfield(
                    controller: usernameInputController,
                    inputType: TextInputType.text,
                    secureText: false,
                    hint: 'Email / Nama Pengguna',
                    prefixIcon: Icon(
                      Icons.account_circle_outlined,
                      color: Colors.white,
                    ),
                  ),

                  SizedBox(
                    height: setHeight(50),
                  ),

                  //PASSWORD
                  Obx(
                    () => FormInputTextfield(
                      controller: passwordInputController,
                      inputType: TextInputType.visiblePassword,
                      secureText: _userController.hidePassword.value,
                      hint: 'Kata Sandi',
                      prefixIcon: Icon(
                        Icons.key,
                        color: Colors.white,
                      ),
                      suffixIcon: IconButton(
                        onPressed: () {
                          _userController.hidePassword.value =
                              !_userController.hidePassword.value;
                        },
                        icon: Icon(
                          _userController.hidePassword.value == true
                              ? Icons.visibility_off
                              : Icons.visibility,
                          color: Colors.white,
                        ),
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                      ),
                    ),
                  ),

                  SizedBox(
                    height: setHeight(50),
                  ),

                  //FORGET PASSWORD
                  Align(
                    alignment: Alignment.centerRight,
                    child: GestureDetector(
                      onTap: () {
                        Get.toNamed(Routes.routeForgetPassword);
                      },
                      child: Text(
                        'Lupa Kata Sandi?',
                        style: styleTitle.copyWith(
                          color: Colors.white,
                          fontSize: setFontSize(50),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(
                    height: setHeight(80),
                  ),

                  //BUTON SIGN IN
                  FormInputButton(
                    text: 'Login',
                    onClick: () {
                      Get.toNamed(Routes.routeHome);
                    },
                  ),

                  SizedBox(
                    height: setHeight(80),
                  ),

                  GestureDetector(
                    onTap: () {
                      Get.toNamed(Routes.routeRegister);
                    },
                    child: Center(
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(children: [
                          TextSpan(
                              text: 'belum punya akun?',
                              style: styleSubtitle.copyWith(
                                fontSize: setFontSize(32),
                                color: Colors.white,
                              )),
                          TextSpan(
                              text: ' Register!',
                              style: styleTitle.copyWith(
                                  fontSize: setFontSize(32),
                                  color: Colors.lightBlue,
                                  fontWeight: FontWeight.bold))
                        ]),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )),
        ],
      ),
    );
  }
}
