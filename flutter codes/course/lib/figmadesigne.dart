// ignore_for_file: file_names, depend_on_referenced_packages, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:course/utils.dart';

// void main() {
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(),
//         drawer: const Drawer(),
//         body: const Scene(),
//       ),
//     ),
//   );
// }


class Scene extends StatelessWidget {
  const Scene({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 374;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // androidlarge16zw (1:2)
        width: double.infinity,
        height: 743 * fem,
        decoration: const BoxDecoration(
          color: Color(0xffffaf5a),
        ),
        child: Stack(
          children: [
            Positioned(
              // vector3PWB (5:64)
              left: 76.4503173828 * fem,
              top: 209.1655883789 * fem,
              child: Align(
                child: SizedBox(
                  width: 532.55 * fem,
                  height: 651.67 * fem,
                  child: Image.asset(
                    'imagesvector-3.png',
                    width: 532.55 * fem,
                    height: 651.67 * fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // vector4xSo (5:67)
              left: 0 * fem,
              top: 0 * fem,
              child: Align(
                child: SizedBox(
                  width: 640.21 * fem,
                  height: 710.93 * fem,
                  child: Image.asset(
                    'imagesvector-4.png',
                    width: 640.21 * fem,
                    height: 710.93 * fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // clippathgroupQZh (2:18)
              left: 49 * fem,
              top: 35 * fem,
              child: Align(
                child: SizedBox(
                  width: 276.46 * fem,
                  height: 140.23 * fem,
                  child: Image.asset(
                    'imagesclip-path-group.png',
                    width: 276.46 * fem,
                    height: 140.23 * fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // loginorj (3:20)
              left: 142 * fem,
              top: 191 * fem,
              child: Align(
                child: SizedBox(
                  width: 89 * fem,
                  height: 48 * fem,
                  child: Text(
                    'Login',
                    style: SafeGoogleFont(
                      'Poppins',
                      fontSize: 32 * ffem,
                      fontWeight: FontWeight.w700,
                      height: 1.5 * ffem / fem,
                      color: const Color(0xff000000),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // rectangle2nif (3:22)
              left: 27 * fem,
              top: 294 * fem,
              child: Align(
                child: SizedBox(
                  width: 320 * fem,
                  height: 50 * fem,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12 * fem),
                      color: const Color(0xffede8e2),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // rectangle2PTZ (3:23)
              left: 27 * fem,
              top: 294 * fem,
              child: Align(
                child: SizedBox(
                  width: 50 * fem,
                  height: 50 * fem,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12 * fem),
                      color: const Color(0xff2f6c60),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // vectorpYs (3:27)
              left: 42 * fem,
              top: 310 * fem,
              child: Align(
                child: SizedBox(
                  width: 20 * fem,
                  height: 18 * fem,
                  child: Image.asset(
                    'imagesvector.png',
                    width: 20 * fem,
                    height: 18 * fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // emailadress3Aj (3:28)
              left: 90 * fem,
              top: 306 * fem,
              child: Align(
                child: SizedBox(
                  width: 102 * fem,
                  height: 24 * fem,
                  child: Text(
                    'Email Adress',
                    style: SafeGoogleFont(
                      'Poppins',
                      fontSize: 16 * ffem,
                      fontWeight: FontWeight.w400,
                      height: 1.5 * ffem / fem,
                      color: const Color(0xff8f8b8b),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // rectangle3r8B (3:30)
              left: 27 * fem,
              top: 366 * fem,
              child: Align(
                child: SizedBox(
                  width: 320 * fem,
                  height: 50 * fem,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12 * fem),
                      color: const Color(0xffede8e2),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // rectangle4tqZ (3:31)
              left: 26 * fem,
              top: 366 * fem,
              child: Align(
                child: SizedBox(
                  width: 50 * fem,
                  height: 50 * fem,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12 * fem),
                      color: const Color(0xff2f6c60),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // vectorX7q (3:36)
              left: 42 * fem,
              top: 380 * fem,
              child: Align(
                child: SizedBox(
                  width: 18 * fem,
                  height: 21 * fem,
                  child: Image.asset(
                    'imagesvector-zk3.png',
                    width: 18 * fem,
                    height: 21 * fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // passwordzGK (3:34)
              left: 90 * fem,
              top: 378 * fem,
              child: Align(
                child: SizedBox(
                  width: 77 * fem,
                  height: 24 * fem,
                  child: Text(
                    'Password',
                    style: SafeGoogleFont(
                      'Poppins',
                      fontSize: 16 * ffem,
                      fontWeight: FontWeight.w400,
                      height: 1.5 * ffem / fem,
                      color: const Color(0xff8f8b8b),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // rectangle51SK (3:37)
              left: 27 * fem,
              top: 452 * fem,
              child: Align(
                child: SizedBox(
                  width: 320 * fem,
                  height: 50 * fem,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12 * fem),
                      color: const Color(0xff2f6c60),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0x4c2f6c60),
                          offset: Offset(0 * fem, 8 * fem),
                          blurRadius: 6 * fem,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // loginPxf (3:38)
              left: 151 * fem,
              top: 459 * fem,
              child: Align(
                child: SizedBox(
                  width: 72 * fem,
                  height: 36 * fem,
                  child: Text(
                    'Log In',
                    style: SafeGoogleFont(
                      'Poppins',
                      fontSize: 24 * ffem,
                      fontWeight: FontWeight.w700,
                      height: 1.5 * ffem / fem,
                      color: const Color(0xffffffff),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // vectorpo5 (3:40)
              left: 229.5 * fem,
              top: 470.2216796875 * fem,
              child: Align(
                child: SizedBox(
                  width: 18 * fem,
                  height: 15.56 * fem,
                  child: Image.asset(
                    'imagesvector-QQB.png',
                    width: 18 * fem,
                    height: 15.56 * fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // forgotyourpasswordTb9 (3:41)
              left: 95 * fem,
              top: 528 * fem,
              child: Align(
                child: SizedBox(
                  width: 183 * fem,
                  height: 24 * fem,
                  child: Text(
                    'Forgot your password?',
                    style: SafeGoogleFont(
                      'Poppins',
                      fontSize: 16 * ffem,
                      fontWeight: FontWeight.w400,
                      height: 1.5 * ffem / fem,
                      decoration: TextDecoration.underline,
                      color: const Color(0xff000000),
                      decorationColor: const Color(0xff000000),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // orSxs (4:47)
              left: 173 * fem,
              top: 573 * fem,
              child: Align(
                child: SizedBox(
                  width: 24 * fem,
                  height: 24 * fem,
                  child: Text(
                    'OR',
                    style: SafeGoogleFont(
                      'Poppins',
                      fontSize: 16 * ffem,
                      fontWeight: FontWeight.w700,
                      height: 1.5 * ffem / fem,
                      color: const Color(0xff000000),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // rectangle6g6X (4:50)
              left: 27 * fem,
              top: 626 * fem,
              child: Align(
                child: SizedBox(
                  width: 320 * fem,
                  height: 50 * fem,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12 * fem),
                      border: Border.all(color: const Color(0xff2f6c60)),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // signupWLT (4:51)
              left: 140 * fem,
              top: 633 * fem,
              child: Align(
                child: SizedBox(
                  width: 93 * fem,
                  height: 36 * fem,
                  child: Text(
                    'Sign Up',
                    style: SafeGoogleFont(
                      'Poppins',
                      fontSize: 24 * ffem,
                      fontWeight: FontWeight.w700,
                      height: 1.5 * ffem / fem,
                      color: const Color(0xff2f6c60),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // vectorWzf (4:53)
              left: 239.5 * fem,
              top: 643.2216796875 * fem,
              child: Align(
                child: SizedBox(
                  width: 18 * fem,
                  height: 15.56 * fem,
                  child: Image.asset(
                    'imagesvector-zTm.png',
                    width: 18 * fem,
                    height: 15.56 * fem,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
