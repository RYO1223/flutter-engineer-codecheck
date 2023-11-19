import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_engineer_codecheck/ui/app_router.dart';
import 'package:flutter_engineer_codecheck/view_model/user/user_view_model.dart';
import 'package:flutter_gen/gen_l10n/l10n.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:sign_in_button/sign_in_button.dart';

class SignInPage extends ConsumerStatefulWidget {
  const SignInPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SignInPageState();
}

class _SignInPageState extends ConsumerState<SignInPage> {
  @override
  Widget build(BuildContext context) {
    final userViewModel = ref.watch(userViewModelProvider.notifier);
    return Scaffold(
      body: Align(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              L10n.of(context)!.signIn,
              style: Theme.of(context).textTheme.displayMedium,
            ),
            const SizedBox(height: 100),
            SizedBox(
              height: 400,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // signInWith系のボタンは形が明確に指定されていることがあるので、
                  // 公式サイトの要件をしっかり確認すること
                  _githubButton(context, userViewModel),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  SignInButton _githubButton(
    BuildContext context,
    UserViewModel userViewModel,
  ) {
    return SignInButton(
      Buttons.gitHub,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(100)),
      ),
      onPressed: () async {
        try {
          context.loaderOverlay.show();

          await userViewModel.signInWithGithub();
          if (!mounted) {
            return;
          }
          const HomeRoute().go(context);
        } on FirebaseAuthException catch (e) {
          if (e.code == 'web-context-cancelled') {
            debugPrint(e.toString());
            return;
          }
          rethrow;
        } finally {
          context.loaderOverlay.hide();
        }
      },
    );
  }
}
