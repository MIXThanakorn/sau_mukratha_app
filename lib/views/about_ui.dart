import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutUi extends StatefulWidget {
  const AboutUi({super.key});

  @override
  State<AboutUi> createState() => _AboutUiState();
}

class _AboutUiState extends State<AboutUi> {
  Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Image.asset(
                'assets/images/saulogo.png',
                height: 180,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              Text(
                'Tech SAU BUFFET',
                style: TextStyle(
                    color: Color.fromARGB(255, 218, 70, 189),
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Text(
                'applications for BBQBuffet owner'
                '\nfor thai people'
                '\nby thai people'
                '\nif you want app like this'
                '\ncontract us',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Text(
                'IT Student from SAU',
                style: TextStyle(
                    color: Color.fromARGB(255, 78, 78, 78),
                    fontSize: 23,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              GestureDetector(
                onTap: () {
                  _makePhoneCall('0631956821');
                },
                child: Image.asset(
                  'assets/images/sauqr.png',
                  height: 100,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
