import 'package:fitness_app_live/constants/color.dart';
import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';

class OtpVerify extends StatelessWidget {
  const OtpVerify({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.pop(context);
            },
            color: Colors.white,
          ),
          backgroundColor: Colors.transparent,
        ),
        body: Container(
          width: size.width,
          height: size.height,
          padding: EdgeInsets.only(
            top: size.height * 0.06,
            left: size.width * 0.03,
            right: size.width * 0.05,
            bottom: size.height * 0.03,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center, // Center aligns children horizontally
            children: [
              Center( // Center the 'Verification' text
                child: Text(
                  'Verification'.toUpperCase(),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: size.width * 0.07,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Center( // Center the 'Enter 4 Digits Of OTP' text
                child: Text(
                  'Enter 4 Digits Of OTP',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: size.width * 0.04,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: size.height * 0.05,
              ),
              OTPTextField(
                length: 4,
                width: MediaQuery.of(context).size.width,
                fieldWidth: 40,
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.white,
                ),
                textFieldAlignment: MainAxisAlignment.spaceAround,
                fieldStyle: FieldStyle.box,
                outlineBorderRadius: 15,
                otpFieldStyle: OtpFieldStyle(
                  backgroundColor: Colors.grey.shade800,
                  borderColor: Colors.grey.shade700,
                ),
                onChanged: (pin) {
                  // Use print statements for debugging
                  print("Changed: $pin");
                },
                onCompleted: (pin) {
                  // Perform action on completion
                  print("Completed: $pin");
                },
              ),
              Spacer(),
              Container(
                width: size.width * 0.9,
                alignment: Alignment.center,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Try another way',
                    style: TextStyle(
                      color: PrimaryColor,
                      fontSize: size.width * 0.04,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Container(
                alignment: Alignment.center,
                child: ElevatedButton(
                  onPressed: () {
                    // Implement button action
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: PrimaryColor,
                    padding: EdgeInsets.symmetric(
                      horizontal: size.width * 0.3,
                      vertical: size.height * 0.02,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  child: Text(
                    'Send',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: size.width * 0.04,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
