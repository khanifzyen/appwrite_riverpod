import 'package:flutter/material.dart';
import 'package:appwrite/appwrite.dart';
import '../../data/helpers/network_client_helper.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  void _showSnackbar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

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
                  print('Sign in successful: ${result}');
                } on AppwriteException catch (e) {
                  // Handle AppwriteException (e.g., show error message)
                  _showSnackbar(context, 'Failed to sign in: ${e.message}');
                  print('Failed to sign in: ${e.message}');
                } catch (e) {
                  // Handle other exceptions
                  _showSnackbar(context, 'An error occurred: $e');
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
                  print('Sign up successful: ${result.toString()}');
                  _showSnackbar(
                      context, 'Sign up successfull: $result.toString()}');
                } on AppwriteException catch (e) {
                  // Handle AppwriteException (e.g., show error message)
                  _showSnackbar(context, 'Failed to sign up: ${e.message}');
                  print('Failed to sign up: ${e.message}');
                } catch (e) {
                  // Handle other exceptions
                  _showSnackbar(context, 'An error occurred: $e');
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
