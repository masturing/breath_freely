import 'package:breath_freely/configs/form_controller.dart';
import 'package:flutter/material.dart';

List<Map<String, dynamic>> genderListData = [
  {'value': 'p', 'text': 'Pria'},
  {'value': 'w', 'text': 'Wanita'},
];

List<Map<String, dynamic>> defaultRadioData = [
  {'value': '1', 'text': 'Yes'},
  {'value': '0', 'text': 'No'},
];

List<Map<String, dynamic>> loginForm = [
  {
    'type': 'email',
    'label': 'Email',
    'hint': 'Enter your email',
    'controller': loginFormController['email'],
  },
  {
    'type': 'password',
    'label': 'Password',
    'hint': 'Enter your password',
    'controller': loginFormController['password'],
  },
];

List<Map<String, dynamic>> registerForm = [
  {
    'type': 'text',
    'label': 'Fullname',
    'hint': 'Enter your fullname',
    'icon': Icons.person,
    'controller': registerFormController['fullname'],
  },
  {
    'type': 'email',
    'label': 'Email',
    'hint': 'Enter your email',
    'controller': registerFormController['email'],
  },
  {
    'name': 'gender',
    'type': 'radio',
    'label': 'Gender',
    'hint': 'Choose your gender',
    'dataList': genderListData,
    'controller': registerFormController['gender'],
  },
  {
    'type': 'text',
    'label': 'Year of Birth',
    'hint': 'Enter your year of birth',
    'icon': Icons.calendar_today,
    'controller': registerFormController['yearOfBirth'],
  },
  {
    'type': 'text',
    'label': 'Telephone',
    'hint': 'Enter your telephone',
    'icon': Icons.phone,
    'controller': registerFormController['telephone'],
  },
  {
    'type': 'text',
    'label': 'Hobby',
    'hint': 'Enter your hobby',
    'icon': Icons.sports_soccer,
    'controller': registerFormController['hobby'],
  },
  {
    'type': 'password',
    'label': 'Password',
    'hint': 'Enter your password',
    'controller': registerFormController['password'],
  },
  {
    'type': 'password',
    'label': 'Confirm Password',
    'hint': 'Enter your confirm password',
    'controller': registerFormController['confirmPassword'],
  },
];

List<Map<String, dynamic>> predictionForm = [
  {
    'name': 'gender',
    'type': 'radio',
    'label': 'Smoking',
    'hint': 'Choose your gender',
    'dataList': defaultRadioData,
    'controller': predictController['smoking'],
  },
  {
    'name': 'gender',
    'type': 'radio',
    'label': 'Yellow Finger',
    'hint': 'Choose your gender',
    'dataList': defaultRadioData,
    'controller': predictController['yellowFinger'],
  },
  {
    'name': 'gender',
    'type': 'radio',
    'label': 'Anxiety',
    'hint': 'Choose your gender',
    'dataList': defaultRadioData,
    'controller': predictController['anxiety'],
  },
  {
    'name': 'gender',
    'type': 'radio',
    'label': 'Peer Pressure',
    'hint': 'Choose your gender',
    'dataList': defaultRadioData,
    'controller': predictController['peerPressure'],
  },
  {
    'name': 'gender',
    'type': 'radio',
    'label': 'Chronic Disease',
    'hint': 'Choose your gender',
    'dataList': defaultRadioData,
    'controller': predictController['chronicDisease'],
  },
  {
    'name': 'gender',
    'type': 'radio',
    'label': 'Fatigue',
    'hint': 'Choose your gender',
    'dataList': defaultRadioData,
    'controller': predictController['fatigue'],
  },
  {
    'name': 'gender',
    'type': 'radio',
    'label': 'Allergy',
    'hint': 'Choose your gender',
    'dataList': defaultRadioData,
    'controller': predictController['allergy'],
  },
  {
    'name': 'gender',
    'type': 'radio',
    'label': 'Wheezing',
    'hint': 'Choose your gender',
    'dataList': defaultRadioData,
    'controller': predictController['wheezing'],
  },
  {
    'name': 'gender',
    'type': 'radio',
    'label': 'Coughing',
    'hint': 'Choose your gender',
    'dataList': defaultRadioData,
    'controller': predictController['coughing'],
  },
  {
    'name': 'gender',
    'type': 'radio',
    'label': 'Shortness of Breath',
    'hint': 'Choose your gender',
    'dataList': defaultRadioData,
    'controller': predictController['shortnessOfBreath'],
  },
  {
    'name': 'gender',
    'type': 'radio',
    'label': 'Swallowing Difficulty',
    'hint': 'Choose your gender',
    'dataList': defaultRadioData,
    'controller': predictController['swallowingDifficulty'],
  },
  {
    'name': 'gender',
    'type': 'radio',
    'label': 'Chest Pain',
    'hint': 'Choose your gender',
    'dataList': defaultRadioData,
    'controller': predictController['chestPain'],
  },
];
