import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Image.asset(
                'images/Reading.png',
                height: 150,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 76.0),
              _buildWelcomeMessage(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildWelcomeMessage(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: const EdgeInsets.symmetric(horizontal: 24.0),
      padding: const EdgeInsets.only(left: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            " أهـلا بـكم في ",
            style: Theme.of(context).textTheme.displayMedium,
          ),
          const SizedBox(height: 22.0),
          Text(
            "المكتـــبة الإلكترونية",
            style: GoogleFonts.tajawal(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 48.0),
          SizedBox(
            width: 320.0,
            child: Text(
              "اقرأ الكتب التي تناسب اهتماماتك واستمتع بقراءة مشروعات التخرج المتنوعة، كلها بين يديك.",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: GoogleFonts.tajawal(
                fontSize: 18,
                height: 1.50,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
