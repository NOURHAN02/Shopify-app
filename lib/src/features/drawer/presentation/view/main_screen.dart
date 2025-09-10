import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopify_app/src/features/drawer/presentation/manager/bloc.dart';
import 'package:shopify_app/src/features/drawer/presentation/manager/bloc_states.dart';
import 'package:shopify_app/src/features/drawer/presentation/widgets/drawer_icon_widget.dart';
import 'package:shopify_app/src/features/drawer/presentation/widgets/drawer_widget.dart';
import 'package:shopify_app/src/features/drawer/presentation/widgets/title_appbar_widget.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const TitleAppBarWidget(),
        leading: const DrawerIconWidget(),
      ),
      drawer: const DrawerWidget(),
      body: BlocBuilder<DraweBloc, BlocStates>(
        builder: (context, bloc) {
          final cubit = context.read<DraweBloc>();
          return cubit.page[cubit.currentPage];
        },
      ),
    );
  }
}
