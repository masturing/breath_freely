import 'package:flutter/material.dart';

Map<String, TextEditingController> loginFormController = {
  'email': TextEditingController(),
  'password': TextEditingController(),
};

Map<String, TextEditingController> registerFormController = {
  'fullname': TextEditingController(),
  'email': TextEditingController(),
  'password': TextEditingController(),
  'confirmPassword': TextEditingController(),
  'gender': TextEditingController(),
  'yearOfBirth': TextEditingController(),
  'telephone': TextEditingController(),
  'hobby': TextEditingController(),
};

Map<String, TextEditingController> predictController = {
  'smoking': TextEditingController(),
  'yellowFinger': TextEditingController(),
  'anxiety': TextEditingController(),
  'peerPressure': TextEditingController(),
  'chronicDisease': TextEditingController(),
  'fatigue': TextEditingController(),
  'allergy': TextEditingController(),
  'coughing': TextEditingController(),
  'wheezing': TextEditingController(),
  'shortnessOfBreath': TextEditingController(),
  'swallowingDifficulty': TextEditingController(),
  'chestPain': TextEditingController(),
};
