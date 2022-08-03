import 'package:flutter/material.dart';
import 'package:flutter_cleaning_service_ui/color_schema.dart';
import 'package:flutter_cleaning_service_ui/main_page.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: deepPurple400,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(
            height: 60,
          ),
          const Text(
            'Cleaning Service\nOnline',
            style: TextStyle(
              fontSize: 40,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          // const SizedBox(
          //   height: 10,
          // ),
          const Text(
            "Rumah Sehat\nuntuk\nKehidupan yang Sehat",
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
          ),
          // const SizedBox(
          //   height: 10,
          // ),
          Container(
            height: 350,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/image/splash.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return const MainPage();
                    },
                  ),
                ),
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 60,
                    vertical: 30,
                  ),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                    ),
                    color: Colors.white,
                  ),
                  child: Text(
                    'Lanjutkan',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      color: deepPurple400,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
