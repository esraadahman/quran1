import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qurane3/features/user_Info/cubit/cubit/user_info_cubit.dart';

class Textfiled_phone extends StatefulWidget {
  String? name;

  Textfiled_phone({
    super.key,
    required this.name,
  });

  @override
  State<Textfiled_phone> createState() => _textfiledsState();
}

class _textfiledsState extends State<Textfiled_phone> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UserInfoCubit(),
      child: BlocConsumer<UserInfoCubit, UserInfoState>(
        listener: (context, state) {
        
        },
        builder: (context, state) {
          final cubit = BlocProvider.of<UserInfoCubit>(context);
          return Container();
        },
      ),
    );
  }
}
