import 'package:flutter/material.dart';
import 'package:appwrite/appwrite.dart';
import '../../data/helpers/network_client_helper.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        ElevatedButton(
          onPressed: () async {
            Account account =
                Account(NetworkClientHelper.instance.appwriteClient);

            final result = await account.createEmailPasswordSession(
              email: 'khanif.zyen@gmail.com',
              password: 'mypassword',
            );
          },
          child: const Text("Sign In"),
        ),
        const SizedBox(height: 10),
        ElevatedButton(
          onPressed: () async {
            Account account =
                Account(NetworkClientHelper.instance.appwriteClient);

            final result = await account.create(
              userId: ID.unique(),
              email: 'khanif.zyen@gmail.om',
              password: 'mypassword',
              name: 'khanif', // optional
            );
          },
          child: const Text("Sign Up"),
        ),
      ]),
    );
  }
}
