import 'package:flutter/material.dart';
import 'package:appwrite/appwrite.dart';

import '../../data/helpers/network_client_helper.dart';
import '../extensions/build_context_extension.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () async {
                try {
                  Account account =
                      Account(NetworkClientHelper.instance.appwriteClient);

                  final result = await account.createEmailPasswordSession(
                    email: 'khanif.zyen@gmail.com',
                    password: 'mypassword',
                  );
                  context.showSnackBar(
                      'Sign in successful: ${result}', Status.info);
                  print('Sign in successful: ${result}');
                } on AppwriteException catch (e) {
                  // Handle AppwriteException (e.g., show error message)
                  context.showSnackBar(
                      'Failed to sign in: ${e.message}', Status.error);
                  print('Failed to sign in: ${e.message}');
                } catch (e) {
                  // Handle other exceptions
                  context.showSnackBar('An error occurred: $e', Status.error);
                  print('An error occurred: $e');
                }
              },
              child: const Text("Sign In"),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () async {
                try {
                  Account account =
                      Account(NetworkClientHelper.instance.appwriteClient);

                  final result = await account.create(
                    userId: ID.unique(),
                    email: 'khanif.zyen@gmail.com',
                    password: 'mypassword',
                    name: 'khanif', // optional
                  );
                  print('Sign up successful: ${result}');
                  context.showSnackBar(
                      'Sign up successfull: $result}', Status.info);
                } on AppwriteException catch (e) {
                  // Handle AppwriteException (e.g., show error message)
                  context.showSnackBar(
                      'Failed to sign up: ${e.message}', Status.error);
                  print('Failed to sign up: ${e.message}');
                } catch (e) {
                  // Handle other exceptions
                  context.showSnackBar('An error occurred: $e', Status.error);
                  print('An error occurred: $e');
                }
              },
              child: const Text("Sign Up"),
            ),
          ],
        ),
      ),
    );
  }
}
