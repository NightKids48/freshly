import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freshly/src/blocs/login/login_bloc.dart';
import 'package:freshly/src/utilities/utilities.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => LoginBloc()),
      ],
      child: MaterialApp.router(
        routerConfig: router,
      ),
    );
  }
}
