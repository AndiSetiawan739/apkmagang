import 'package:apkmagang/controller/user/user_controller.dart';
import 'package:apkmagang/gen/assets.gen.dart';
import 'package:apkmagang/routes/app_routes.dart';
import 'package:apkmagang/utils/constant.dart';
import 'package:apkmagang/widgets/button/form_input_button.dart';
import 'package:apkmagang/widgets/textfields/form_input_textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  var usernameInputController = TextEditingController();
  var emailInputController = TextEditingController();
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
                    'Register',
                    style: styleTitle.copyWith(
                      fontSize: setFontSize(100),
                      color: const Color(0xFFFFFFFF),
                    ),
                  ),

                  SizedBox(
                    height: setHeight(50),
                  ),

                  FormInputTextfield(
                    controller: usernameInputController,
                    inputType: TextInputType.text,
                    secureText: false,
                    hint: 'Nama Lengkap',
                    prefixIcon: Icon(
                      Icons.account_circle_outlined,
                      color: Colors.white,
                    ),
                  ),

                  SizedBox(
                    height: setHeight(50),
                  ),

                  FormInputTextfield(
                    controller: emailInputController,
                    inputType: TextInputType.text,
                    secureText: false,
                    hint: 'Email',
                    prefixIcon: Icon(
                      Icons.mail,
                      color: Colors.white,
                    ),
                  ),
                  //USERNAME/EMAIL

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

                  //KONFIRMASI PASSWORD
                  Obx(
                    () => FormInputTextfield(
                      controller: passwordInputController,
                      inputType: TextInputType.visiblePassword,
                      secureText: _userController.hidePassword.value,
                      hint: 'Konfirmasi Kata Sandi',
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
                    height: setHeight(80),
                  ),

                  //BUTON SIGN IN
                  FormInputButton(
                    text: 'Register',
                    onClick: () {
                      Get.toNamed(Routes.routeLogin);
                    },
                  ),

                  SizedBox(
                    height: setHeight(80),
                  ),

                  GestureDetector(
                    onTap: () {
                      Get.toNamed(Routes.routeLogin);
                    },
                    child: Center(
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(children: [
                          TextSpan(
                              text: 'Sudah punya akun?',
                              style: styleSubtitle.copyWith(
                                fontSize: setFontSize(32),
                                color: Colors.white,
                              )),
                          TextSpan(
                              text: ' Login!',
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
