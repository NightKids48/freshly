part of 'screens.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController usernameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: VStack(
            [
              const Text(
                'Register',
                style: TextStyle(fontFamily: 'godleaf', fontSize: 25),
              ),
              _buildRegistrationForm(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildRegistrationForm() {
    return VStack(
      [
        TextFieldWidget(
          controller: usernameController,
          title: 'Name',
        ),
        8.heightBox,
        TextFieldWidget(
          controller: emailController,
          title: 'Email',
        ),
        8.heightBox,
        TextFieldWidget(
          controller: passController,
          title: 'Password',
          isPassword: true,
        ),
        16.heightBox,
        ButtonWidget(
          onPressed: () {},
          text: 'Register',
          color: colorName.juneBud,
        ),
        "Already Have Account"
            .richText
            .size(12)
            .withTextSpanChildren(
                [" Login Here".textSpan.size(14).bold.green500.make()])
            .makeCentered()
            .onTap(() {
              context.go(routeName.login);
            })
      ],
    ).p(16);
  }
}
