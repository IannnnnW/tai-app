import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tai/commonWidgets/mainButton.dart';
import 'package:tai/commonWidgets/textField.dart';
import 'package:tai/features/completeRegistration/presentation/step2_residence.dart';


class Step1 extends StatefulWidget {
  const Step1({super.key});

  @override
  State<Step1> createState() => _Step1State();
}

class _Step1State extends State<Step1> {
  // text controllers  for the fields on the form
  final TextEditingController firstName = TextEditingController();
  final TextEditingController lastName = TextEditingController();
  final TextEditingController dateOfBirth = TextEditingController();
  final TextEditingController gender = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController phone = TextEditingController();

  //  global key for the form on this screen
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: const Color.fromARGB(255, 240, 240, 240),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "Add Personal Details",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset("assets/images/darkLine.svg"),
                        const SizedBox(
                          width: 5,
                        ),
                        SvgPicture.asset("assets/images/lightLine.svg"),
                        const SizedBox(
                          width: 5,
                        ),
                        SvgPicture.asset("assets/images/lightLine.svg"),
                        const SizedBox(
                          width: 5,
                        ),
                        SvgPicture.asset("assets/images/lightLine.svg"),
                      ],
                    ),
                    const SizedBox(
                      height: 70,
                    ),
                    Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          TextFieldWidget(
                            onChanged: (p0) {
                              
                            },
                              keyBoardType: TextInputType.name,
                              textcolor: Colors.black,
                              controller: firstName,
                              label: "First Name"),
                          const SizedBox(
                            height: 20,
                          ),
                          TextFieldWidget(
                            onChanged: (p0) {
                              
                            },
                              keyBoardType: TextInputType.name,
                              textcolor: Colors.black,
                              controller: lastName,
                              label: "Last name"),
                          const SizedBox(
                            height: 20,
                          ),
                          TextFieldWidget(
                            onChanged: (p0) {
                              
                            },
                              keyBoardType: TextInputType.datetime,
                              textcolor: Colors.black,
                              controller:
                                  dateOfBirth, // add a hint text for the date format
                              label: "Date of Birth"),
                          const SizedBox(
                            height: 20,
                          ),
                          TextFieldWidget(
                            onChanged: (p0) {
                              
                            },
                              keyBoardType: TextInputType.name,
                              textcolor: Colors.black,
                              controller: gender,
                              label: "Gender"),
                          const SizedBox(
                            height: 20,
                          ),
                          TextFieldWidget(
                            onChanged: (p0) {
                              
                            },
                              keyBoardType: TextInputType.emailAddress,
                              textcolor: Colors.black,
                              controller: email,
                              label: "Email"),
                          const SizedBox(
                            height: 20,
                          ),
                          TextFieldWidget(
                            onChanged: (p0) {
                              
                            },
                              keyBoardType: TextInputType.number,
                              textcolor: Colors.black,
                              controller: phone,
                              label: "Phone Number"),
                          const SizedBox(
                            height: 70,
                          ),
                        ],
                      ),
                    ),
                    MainButton(
                        text: "Next",
                        onpressed: () {
                          if (_formKey.currentState!.validate()) {
                            // If the form is valid, display a snackbar. In the real world,
                            // you'd often call a server or save the information in a database.
                            
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('Processing Data')),
                            );

                            Navigator.push(context,
                              MaterialPageRoute(builder: (context) => const Step2()));
                          }
                          
                        })
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
