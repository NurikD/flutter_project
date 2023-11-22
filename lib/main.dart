  import 'package:flutter/material.dart';

  void main() => runApp(MyApp());

  class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
      );
    }
  }
// Экран прогрузки
  class SplashScreen extends StatefulWidget {
    @override
    _SplashScreenState createState() => _SplashScreenState();
  }

  class _SplashScreenState extends State<SplashScreen> {
    @override
    void initState() {
      super.initState();
      Future.delayed(const Duration(seconds: 2), () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => SecondScreen()),
        );
      });
    }

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/Main.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      );
    }
  }
// Начальный приветственный экран
  class SecondScreen extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100.0, bottom: 40.0),
              child: Image.asset('images/Picture1.png'),
            ),
            const Text(
              '''Enjoy quick pick-up and delivery 
  to your destination''',
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 40.0),
            NavigationDots(currentIndex: 0),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 32.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(builder: (context) => ThirdScreen()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            onPrimary: const Color(0xFF0560FA),
                            side: const BorderSide(color: Color(0xFF0560FA)),
                          ),
                          child: const Text('Skip'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 16.0),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(builder: (context) => ThirdScreen()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            primary: const Color(0xFF0560FA),
                            onPrimary: Colors.white,
                          ),
                          child: const Text('Next'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }
  }
// Второй приветственный экран
  class ThirdScreen extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 130.0, bottom: 10.0),
              child: Image.asset('images/Picture2.png'),
            ),
            const SizedBox(height: 100.0),
            const Text(
              'Flexible Payments',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25.0,
                color: Color(0xFF0560FA),
                  fontWeight: FontWeight.bold
              ),
            ),
            const SizedBox(height: 40.0),
            NavigationDots(currentIndex: 1),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 32.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(builder: (context) => SecondScreen()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            onPrimary: const Color(0xFF0560FA),
                            side: const BorderSide(color: Color(0xFF0560FA)),
                          ),
                          child: const Text('Skip'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 16.0),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(builder: (context) => FourthScreen()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            primary: const Color(0xFF0560FA),
                            onPrimary: Colors.white,
                          ),
                          child: const Text('Next'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }
  }
// Фрейм для перехода к регистрации
  class FourthScreen extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 130.0, bottom: 10.0),
              child: Image.asset('images/Picture3.png'),
            ),
            const SizedBox(height: 100.0),
            // ignore: prefer_const_constructors
            Text(
              'Real-time Tracking',
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 25.0,
                color: Color(0xFF0560FA),
                  fontWeight: FontWeight.bold
              ),
            ),
            const SizedBox(height: 40.0),
            NavigationDots(currentIndex: 2),
            const SizedBox(height: 70.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignUpScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: const Color(0xFF0560FA),
                onPrimary: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 120, vertical: 15),
              ),
              child: const Text('Sign Up'),
            ),
            const SizedBox(height: 16.0),
            RichText(
              text: const TextSpan(
                text: 'Already have an account? ',
                style: TextStyle(
                  color: Colors.black,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: 'Sign In',
                    style: TextStyle(
                      color: Color(0xFF0560FA),
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
// Страница регистрации
  class SignUpScreen extends StatefulWidget {
    @override
    _SignUpScreenState createState() => _SignUpScreenState();
  }

  class _SignUpScreenState extends State<SignUpScreen> {
    bool isChecked = true;

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 100.0, left: 20.0, right: 20.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Create an account',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0,
                  ),
                ),
                const SizedBox(height: 8.0),
                const Text(
                  'Complete the sign-up process',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 16.0),
                buildInputField('Full name', 'Ivanov Ivan'),
                buildInputField('Phone number', '0000000000'),
                buildInputField('Email address', '*********@mail.ru '),
                buildInputField('Password', '**********', isPassword: true),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Checkbox(
                      value: isChecked,
                      onChanged: (value) {
                        setState(() {
                          isChecked = value ?? false;
                        });
                      },
                    ),
                    const Flexible(
                      child: Text(
                        'By ticking this box, you agree to our Terms and conditions and private policy',
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 50.0),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xFF0560FA),
                    onPrimary: Colors.white,
                    padding: const EdgeInsets.symmetric(horizontal: 160, vertical: 15),
                  ),
                  child: const Text('Sign Up'),
                ),
                const SizedBox(height: 16.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Already have an account?'),
                    const SizedBox(width: 8.0),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LoginScreen()),
                        );
                      },
                      child: const Text(
                        'Sign In',
                        style: TextStyle(
                          color: Color(0xFF0560FA),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16.0),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('or sign in using'),
                    ],
                  ),
                ),
                // Иконка на новой строке
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('images/google.png'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }
  }





    Widget buildInputField(String label, String hint, {bool isPassword = false}) {
      return Container(
        margin: const EdgeInsets.only(bottom: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            TextFormField(
              obscureText: isPassword,
              decoration: InputDecoration(
                hintText: hint,
                border: const OutlineInputBorder(),
              ),
            ),
          ],
        ),
      );
    }

// Страница авторизации
  class LoginScreen extends StatefulWidget {
    @override
    _LoginScreenState createState() => _LoginScreenState();
  }

  class _LoginScreenState extends State<LoginScreen> {
    bool rememberMe = false;

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 150.0, left: 20.0, right: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Welcome Back',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0,
                ),
              ),
              const SizedBox(height: 16.0),
              buildInputField('Email Address', '********@mail.ru'),
              buildInputField('Password', '***********'),

              RememberMeCheckbox(
                initialValue: rememberMe,
                onChanged: (value) {
                  setState(() {
                    rememberMe = value;
                  });
                },
              ),

              const SizedBox(height: 100.0),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xFF0560FA),
                  onPrimary: Colors.white,
                  padding: const EdgeInsets.symmetric(horizontal: 165, vertical: 15),
                ),
                child: const Text('Log In'),
              ),
              const SizedBox(height: 16.0),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RestorePassword()),
                  );
                },
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Forgot your password? ',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      'Restore Password',
                      style: TextStyle(
                        color: Color(0xFF0560FA),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16.0),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Already have an account?'),
                      const SizedBox(width: 8.0),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SignUpScreen()),
                          );
                        },
                        child: const Text(
                          'Sign Up',
                          style: TextStyle(
                            color: Color(0xFF0560FA),
                          ),
                        ),
                      ),
                    ],
                  ),

                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('or sign in using'),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('images/google.png'),
                      ],
                    ),
                  ),

                ],
              ),
            ],
          ),
        ),
      );
    }
  }


// Страница восстановления пароля
  class RestorePassword extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 130.0, left: 20.0, right: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Forgot Password',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0,
                ),
              ),
              const SizedBox(height: 16.0),
              const Text(
                'Enter your email address',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 50.0),
              buildInputField('Email Address', '*********@mail.ru'),
              const SizedBox(height: 60.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => OtpVerificationScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xFF0560FA),
                  onPrimary: Colors.white,
                  padding: const EdgeInsets.symmetric(horizontal: 154, vertical: 15),
                ),
                child: const Text('Send OTP'),
              ),
              const SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Remember password?'),
                  const SizedBox(width: 8.0),
                  GestureDetector(
                    onTap: () {
                      // Navigate back to the login screen
                      Navigator.pop(context);
                    },
                    child: const Text(
                      'Sign In',
                      style: TextStyle(
                        color: Color(0xFF0560FA),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    }

    Widget buildInputField(String label, String hintText) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
            ),
          ),
          const SizedBox(height: 8.0),
          TextFormField(
            decoration: InputDecoration(
              hintText: hintText,
              contentPadding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
          ),
        ],
      );
    }
  }



// Верификация
  class OtpVerificationScreen extends StatefulWidget {
    @override
    _OtpVerificationScreenState createState() => _OtpVerificationScreenState();
  }

  class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
    final TextEditingController otpController = TextEditingController();

    @override
    void dispose() {
      // Dispose the controller when the widget is disposed to avoid memory leaks
      otpController.dispose();
      super.dispose();
    }

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 150.0, left: 20.0, right: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'OTP Verification',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0,
                ),
              ),
              const SizedBox(height: 16.0),
              const Text(
                'Enter the 6 digit numbers sent to your email',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 16.0),
              buildOtpInputField(),
              const SizedBox(height: 50.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => NewPasswordScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xFF0560FA),
                  onPrimary: Colors.white,
                  padding: const EdgeInsets.symmetric(horizontal: 126, vertical: 15),
                ),
                child: const Text('Set New Password'),
              ),
              const SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('If you didn’t receive code,'),
                  const SizedBox(width: 8.0),
                  GestureDetector(
                    onTap: () {
                      // Implement the logic to resend OTP
                      resendOtp();
                    },
                    child: const Text(
                      'Resend',
                      style: TextStyle(
                        color: Color(0xFF0560FA),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    }

    Widget buildOtpInputField() {
      return TextField(
        controller: otpController,
        keyboardType: TextInputType.number,
        maxLength: 6,
        textAlign: TextAlign.center,
        decoration: const InputDecoration(
          counterText: '', // Remove the character count
          border: OutlineInputBorder(),
        ),
      );
    }

    // Mock function to simulate OTP verification
    void verifyOtp(String otp) {
      print('Verifying OTP: $otp');
      // Implement the actual logic for OTP verification
    }

    // Mock function to simulate OTP resend
    void resendOtp() {
      print('Resending OTP');
      // Implement the actual logic for resending OTP
    }
  }


  class RememberMeCheckbox extends StatefulWidget {
    final bool initialValue;
    final Function(bool) onChanged;

    RememberMeCheckbox({required this.initialValue, required this.onChanged});

    @override
    _RememberMeCheckboxState createState() => _RememberMeCheckboxState();
  }

  class _RememberMeCheckboxState extends State<RememberMeCheckbox> {
    late bool isChecked;

    @override
    void initState() {
      super.initState();
      isChecked = widget.initialValue;
    }

    @override
    Widget build(BuildContext context) {
      return Row(
        children: [
          Checkbox(
            value: isChecked,
            onChanged: (value) {
              setState(() {
                isChecked = value ?? false;
                widget.onChanged(isChecked);
              });
            },
          ),
          const Text(
            'Remember password',
            style: TextStyle(fontSize: 16.0),
          ),
        ],
      );
    }
  }



  Widget buildCheckbox(String label) {
      bool rememberMe = false;

      return CheckboxListTile(
        title: Text(
          label,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        value: rememberMe,
        onChanged: (value) {
        },
        controlAffinity: ListTileControlAffinity.leading,
      );
    }

  class NavigationDots extends StatelessWidget {
    final int currentIndex;
    NavigationDots({required this.currentIndex});
    @override
    Widget build(BuildContext context) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          for (int i = 0; i < 3; i++)
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 4.0),
              width: i == currentIndex ? 8.0 : 8.0,
              height: 8.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: i == currentIndex ? const Color(0xFF0560FA) : Colors.grey,
              ),
            ),
        ],
      );
    }
  }

// Новый пароль
  class NewPasswordScreen extends StatelessWidget {
    final TextEditingController newPasswordController = TextEditingController();

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 100.0, left: 20.0, right: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'New Password',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0,
                ),
              ),
              const SizedBox(height: 16.0),
              const Text(
                'Enter new password',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 16.0),
              buildNewPasswordField(),
              const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => WelcomeScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xFF0560FA),
                  onPrimary: Colors.white,
                  padding: const EdgeInsets.symmetric(horizontal: 165, vertical: 15),
                ),
                child: const Text('Log In'),
              ),
            ],
          ),
        ),
      );
    }

    Widget buildNewPasswordField() {
      return TextField(
        controller: newPasswordController,
        obscureText: true,
        decoration: const InputDecoration(
          labelText: 'New Password',
          border: OutlineInputBorder(),
        ),
      );
    }

    // Mock function to simulate logging in with a new password
    void logInWithNewPassword(String newPassword) {
      print('Logging in with new password: $newPassword');
      // Implement the actual logic for logging in with the new password
    }
  }




// Начальный экран самого приложения
  class WelcomeScreen extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 50.0, left: 16.0, right: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildSearchField(),
              const SizedBox(height: 30.0),
              buildImage(),
              const SizedBox(height: 16.0),
              buildSpecialText(),
              const SizedBox(height: 16.0),
              buildRectangles(),
              const SizedBox(height: 16.0),
              buildTextWithImages(),
            ],
          ),
        ),
        bottomNavigationBar: buildBottomNavigationBar(), // Добавлен вызов
      );
    }

    Widget buildSearchField() {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: TextField(
          decoration: InputDecoration(
            hintText: 'Search...',
            border: InputBorder.none,
          ),
        ),
      );
    }

    Widget buildImage() {
      return Image.asset(
        'images/HelloKen.png',
        height: 100.0,
        width: double.infinity,
        fit: BoxFit.cover,
      );
    }

    Widget buildSpecialText() {
      return Text(
        'Special for you',
        style: TextStyle(
          color: Colors.orange,
          fontSize: 18.0,
          fontWeight: FontWeight.bold,
        ),
      );
    }

    Widget buildRectangles() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          buildRectangle('images/Meetup.png'),
          buildRectangle('images/Revolution.png'),
        ],
      );
    }

    Widget buildRectangle(String imagePath) {
      return Container(
        width: 180.0,
        height: 65.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          image: DecorationImage(
            image: AssetImage(imagePath),
            fit: BoxFit.cover,
          ),
        ),
      );
    }

    Widget buildTextWithImages() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'What would you like to do',
            style: TextStyle(
              color: Colors.blue,
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16.0),
          buildImageRow(),
        ],
      );
    }

    Widget buildImageRow() {
      return Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              buildSmallRectangle('images/Care.png'),
              buildSmallRectangle('images/Frame 46.png'),
            ],
          ),
          const SizedBox(height: 16.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              buildSmallRectangle('images/fundWallet.png'),
              buildSmallRectangle('images/driver.png'),
            ],
          ),
        ],
      );
    }


    Widget buildSmallRectangle(String imagePath) {
      return Container(
        width: 180.0,
        height: 180.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          image: DecorationImage(
            image: AssetImage(imagePath),
            fit: BoxFit.cover,
          ),
        ),
      );
    }

// Навигационная панель
    Widget buildBottomNavigationBar() {
      return Stack(
        alignment: Alignment.bottomCenter,
        children: [
          BottomNavigationBar(
            showUnselectedLabels: true,
            iconSize: 24.0,
            selectedItemColor: Colors.blue,
            unselectedItemColor: Colors.grey,

            items: [
              BottomNavigationBarItem(
                icon: Image.asset('images/home.png', width: 32.0, height: 32.0),
                label: 'Home',

              ),
              BottomNavigationBarItem(
                icon: Image.asset('images/wallet.png', width: 32.0, height: 32.0),
                label: 'Wallet',
              ),
              BottomNavigationBarItem(
                icon: Image.asset('images/smart-car.png', width: 32.0, height: 32.0),
                label: 'Track',
              ),
              BottomNavigationBarItem(
                icon: Image.asset('images/profile.png', width: 32.0, height: 32.0),
                label: 'Profile',
              ),
            ],
          ),
        ],
      );
    }
  }


