import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:leandro/features/profile/domain/entities/app_user.dart';

class ProfileController extends GetxController {
  final _appUser = AppUser().obs;
  AppUser get appUser => _appUser.value;
  set appUser(AppUser user) => _appUser.value = user;

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

  final teste = '';

  

}
