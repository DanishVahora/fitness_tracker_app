import 'package:fitness_app_live/constants/color.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

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
            children: [
              Text(
                'Forgot Password?'.toUpperCase(),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: size.width * 0.07,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Text(
                'Enter your 6-digit code below or \n \t \t \t login with another account',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: size.width * 0.04,
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(
                height: size.height * 0.05,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  maxLength: 6, // Limit input to 6 digits
                  // Set the input text color to white
                  style: TextStyle(
                    color: Colors.white, // Input text color changed to white
                  ),
                  decoration: InputDecoration(
                    hintText: '6-Digit Code',
                    hintStyle: TextStyle(
                      color: Colors.grey.shade700,
                      fontSize: size.width * 0.04,
                    ),
                    fillColor: Colors.grey.shade800,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.grey.shade800,
                      ),
                    ),
                    focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    counterText: "", // Hides the counter text that shows the number of characters entered
                  ),
                  // Validate input
                  validator: (value) {
                    if (value == null || value.length != 6) {
                      return 'Please enter a 6-digit code';
                    }
                    return null;
                  },
                ),
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
                  onPressed: () {},
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