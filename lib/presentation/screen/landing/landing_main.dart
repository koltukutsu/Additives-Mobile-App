// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:wallet/logic/possession/possession_cubit.dart';
// import 'package:wallet/logic/user/user_cubit.dart';
// import 'package:wallet/presentation/screen/auth/authentication.dart';
// import 'package:wallet/presentation/screen/main/main.dart';
//
// class LandingMainScreen extends StatefulWidget {
//   const LandingMainScreen({super.key});
//
//   @override
//   State<LandingMainScreen> createState() => _LandingMainScreenState();
// }
//
// class _LandingMainScreenState extends State<LandingMainScreen> {
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//
//   }
//   @override
//   Widget build(BuildContext context) {
//     return BlocListener<UserCubit, UserState>(listener:(context, state) {
//       debugPrint("LANDING - state: $state");
//       if(state is UserNotFound) {
//         Navigator.of(context).pushReplacement(
//             MaterialPageRoute(builder: (context) => const AuthenticationScreen()));
//       } else if (state is UserFound) {
//         debugPrint("LANDING - Getting Possessions: $state");
//         context.read<PossessionCubit>().getPossessions();
//         Navigator.of(context).pushReplacement(
//             MaterialPageRoute(builder: (context) => const MainScreen()));
//
//       }
//     },
//     child: const Scaffold(
//       body: Center(
//         child: CircularProgressIndicator(),
//       ),
//     ),
//     );
//   }
// }
