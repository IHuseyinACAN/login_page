import 'package:flutter/material.dart';
import 'krslm.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MedTag',
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _login() {
    if (_formKey.currentState!.validate()) {
      // Giriş işlemi gerçekleştirilir (örneğin, API çağrısı)
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Giriş başarılı')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: <Widget>[
          // Arka plan rengi 1
          Container(
            color: Color(0xFFE8F8FF),
          ),

          // Arka plan rengi 2
          Positioned(
            top: -size.height * 0.1,
            left: 0,
            child: ClipPath(
              clipper: BottomRoundedClipper(),
              child: Container(
                width: size.width,
                height: size.height * 1.1,
                color: Color(0xFF91c9e8),
              ),
            ),
          ),

          // Arka plan rengi 3
          Positioned(
            top: -size.height * 0.1,
            left: 0,
            child: ClipPath(
              clipper: BottomRoundedClipper(),
              child: Container(
                width: size.width,
                height: size.height * 1,
                color: Color(0xFF67b8de),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: size.height * 0.3),
                  TextFormField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      labelText: 'E-posta',
                      labelStyle: TextStyle(color: Color(0xFFd98555)),
                      filled: true,
                      fillColor: Color(0xFFE8F8FF), // E-posta arka plan rengi
                    ),
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Lütfen e-posta adresinizi girin';
                      }
                      if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                        return 'Lütfen geçerli bir e-posta adresi girin';
                      }
                      return null;
                    },
                    style: TextStyle(color: Color(0xFFd98555)),
                  ),
                  SizedBox(height: 16.0),
                  TextFormField(
                    controller: _passwordController,
                    decoration: InputDecoration(
                      labelText: 'Şifre',
                      labelStyle: TextStyle(color: Color(0xFFd98555)),
                      filled: true,
                      fillColor: Color(0xFFE8F8FF), // Şifre arka plan rengi
                    ),
                    obscureText: true,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Lütfen şifrenizi girin';
                      }
                      return null;
                    },
                    style: TextStyle(color: Color(0xFFd98555)),
                  ),
                  SizedBox(height: 32.0),
                  ElevatedButton(
                    onPressed: _login,
                    child: Text('Giriş Yap'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFd98555), // Buton arka plan rengi
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Hesabınız yok mu? '),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SignupPage()),
                          );
                        },
                        child: Text(
                          'Kayıt olun',
                          style: TextStyle(
                            color: Color(0xFFd98555),
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 30,
            left: size.width * 0.3,
            child: Column(
              children: [
                Image.asset(
                  "assets/pictures/medtaglogo.png",
                  width: size.width * 0.4,
                  height: size.width * 0.4,
                ),
                Text(
                  "MedTag",
                  style: TextStyle(
                    fontFamily:'Cursive' ,
                    fontSize: 30.0, // Yazı tipi boyutunu ayarlar
                    fontWeight: FontWeight.bold, // Yazı tipini kalın yapar
                    color: Color(0xFFE8F8FF), // Yazı tipi rengini belirler
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SignupPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
  }

  void _signup(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      // Kayıt işlemi gerçekleştirilir (örneğin, API çağrısı)
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Kayıt başarılı')),
      );
      Navigator.pop(context); // Giriş yap ekranına dön
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
        backgroundColor: Color(0xFF3399CC), // Arka plan rengini ayarlama
    body: Stack(
    children: <Widget>[
    // Arka plan rengi 1
      Container(
        color: Color(0xFFE8F8FF),
      ),

      // Arka plan rengi 2
      Positioned(
        top: -size.height * 0.1,
        left: 0,
        child: ClipPath(
          clipper: BottomRoundedClipper(),
          child: Container(
            width: size.width,
            height: size.height * 1.1,
            color: Color(0xFF91c9e8),
          ),
        ),
      ),

      // Arka plan rengi 3
      Positioned(
        top: -size.height * 0.1,
        left: 0,
        child: ClipPath(
          clipper: BottomRoundedClipper(),
          child: Container(
            width: size.width,
            height: size.height * 1,
            color: Color(0xFF67b8de),
          ),
        ),
      ),
      Positioned(
        top: size.height * 0.05,
        left: size.width * 0.3,
        child: Column(
          children: [
            Image.asset(
              "assets/pictures/medtaglogo.png",
              width: size.width * 0.4,
              height: size.width * 0.4,
            ),
            Text(
              "MedTag",
              style: TextStyle(
                fontFamily:'Cursive' ,
                fontSize: 30.0, // Yazı tipi boyutunu ayarlar
                fontWeight: FontWeight.bold, // Yazı tipini kalın yapar
                color: Color(0xFFE8F8FF), // Yazı tipi rengini belirler
              ),
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: size.height * 0.25),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Ad Soyad',
                  labelStyle: TextStyle(color: Color(0xFFD98555)),
                  filled: true,
                  fillColor: Color(0xFFE8F8FF), // Şifre arka plan rengi
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Lütfen adınızı ve soyadınızı girin';
                  }
                  return null;
                },
                style: TextStyle(color: Color(0xFFD98555)),
              ),
              SizedBox(height: 16.0),
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                  labelText: 'E-posta',
                  labelStyle: TextStyle(color: Color(0xFFD98555)),
                  filled: true,
                  fillColor: Color(0xFFE8F8FF), // Şifre arka plan rengi
                ),
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Lütfen e-posta adresinizi girin';
                  }
                  if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                    return 'Lütfen geçerli bir e-posta adresi girin';
                  }
                  return null;
                },
                style: TextStyle(color: Color(0xFFD98555)),
              ),
              SizedBox(height: 16.0),
              TextFormField(
                controller: _passwordController,
                decoration: InputDecoration(
                  labelText: 'Şifre',
                  labelStyle: TextStyle(color: Color(0xFFD98555)),
                  filled: true,
                  fillColor: Color(0xFFE8F8FF), // Şifre arka plan rengi
                ),
                obscureText: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Lütfen şifrenizi girin';
                  }
                  return null;
                },
                style: TextStyle(color: Color(0xFFD98555)),
              ),
              SizedBox(height: 32.0),
              ElevatedButton(
                onPressed: () => _signup(context),
                child: Text('Kayıt Ol'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFD98555), // Background color
                ),
              ),
            ],
          ),
        ),
      ),
    ],
    ),
    );
  }
}

class BottomRoundedClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 50);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 50);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

