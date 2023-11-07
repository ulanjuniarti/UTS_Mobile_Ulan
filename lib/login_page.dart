import 'package:flutter/material.dart';
import 'dashboard_page.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Email',
                  contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(32.0)),
                ),
              ),
              SizedBox(height: 16.0), // Spacer
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Password',
                  contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(32.0)),
                ),
                obscureText: true,
              ),
              SizedBox(height: 16.0), // Spacer
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: Material(
                  borderRadius: BorderRadius.circular(30.0),
                  shadowColor: Colors.lightBlueAccent.shade100,
                  elevation: 5.0,
                  child: MaterialButton(
                    minWidth: 200.0,
                    height: 42.0,
                    onPressed: () {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => DashboardPage(),
                        ),
                      );
                    },
                    color: Colors.lightBlueAccent,
                    child:
                        Text('Log In', style: TextStyle(color: Colors.white)),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  // Implementasi logika lupa password di sini
                  // Misalnya, Anda bisa berpindah ke halaman pemulihan kata sandi.
                  Navigator.of(context).pushNamed('/forgot_password');
                },
                child: Text(
                  'Forgot password?',
                  style: TextStyle(
                    color: Colors.blue,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
