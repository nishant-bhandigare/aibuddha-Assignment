import 'package:flutter/material.dart';

class PincodeInput extends StatefulWidget {
  const PincodeInput({Key? key});

  @override
  _PincodeInputState createState() => _PincodeInputState();
}

class _PincodeInputState extends State<PincodeInput> {
  final TextEditingController pincodeController = TextEditingController();
  Color themeColour = const Color.fromARGB(255, 34, 50, 99);

  String? validatePincode(String value) {
    if (value.isEmpty) {
      return 'Pincode is required';
    }
    if (value.length != 6) {
      return 'Pincode must be 6 digits long';
    }
    if (!RegExp(r'^[0-9]+$').hasMatch(value)) {
      return 'Pincode must contain only digits';
    }
    return null; // Return null if validation succeeds
  }

  void checkPincode() {
    String pincode = pincodeController.text;
    String? error = validatePincode(pincode);
    if (error != null) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Invalid Pincode'),
            content: Text(error),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop(); // Close the dialog
                },
                child: const Text('OK'),
              ),
            ],
          );
        },
      );
    } else {
      // Perform action for valid pincode
    }
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Delivery Details",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 7),
          Container(
            width: MediaQuery.of(context).size.width*0.67,
            height: 46,
            decoration: BoxDecoration(
              border: Border.all(color: themeColour),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 22),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: TextField(
                      controller: pincodeController,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        fillColor: Colors.white,
                        filled: true,
                        hintText: "Enter Pincode",
                        hintStyle: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: checkPincode,
                    child: const Text(
                      "Check",
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
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
