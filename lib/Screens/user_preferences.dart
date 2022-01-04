import 'dart:convert';
import 'package:flairr_final_project/models/user_profile.dart';



class UserPreferences {
  /*static late SharedPreferences _preferences;*/

  static const _keyUser = 'user';
  static const userProfile = User(
    name: 'Safra Rifai',
    email: 'aysh.safra@gmail.com',
    profession: 'Henna Designer',
    about: 'Hey there, I am a professional henna designer',
    imagePath: 'https://images.unsplash.com/photo-1528228728175-149802236c04?ixlib=rb-1.2.'
        '1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto='
        'format&fit=crop&w=387&q=80',
    isDarkLightMode: false,
  );
}
