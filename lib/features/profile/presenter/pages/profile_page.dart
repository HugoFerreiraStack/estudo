import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:leandro/features/profile/domain/entities/app_user.dart';
import 'package:leandro/features/profile/presenter/controllers/profile_controller.dart';
import 'package:leandro/features/profile/presenter/widgets/custom_textfield.dart';

class ProfilePage extends GetView<ProfileController> {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final ProfileController controller = Get.put(ProfileController());
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text('Name: ${controller.appUser.name}')),
            Obx(() => Text('Email: ${controller.appUser.email}')),

            SizedBox(height: 20),
            CustomTextfield(
              labelText: 'Name',
              controller: controller.nameController,
              onChanged: (String value) {
                controller.appUser.name = value;
                log(controller.appUser.name.toString());
              },
            ),
            CustomTextfield(
              labelText: 'Email',
              controller: controller.emailController,
              onChanged: (String value) {
                controller.appUser.email = value;
                log(controller.appUser.email.toString());
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.appUser = AppUser(
            name: 'New Name',
            email: 'newemail@example.com',
          );

          log(controller.appUser.email.toString());
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
