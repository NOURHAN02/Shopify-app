import 'package:bloc/bloc.dart';
import 'package:shopify_app/src/features/drawer/data/repo/drawer_repo.dart';
import 'package:shopify_app/src/features/drawer/presentation/manager/bloc_states.dart';

class DraweBloc extends Cubit<BlocStates> {
  DraweBloc(this.drawerRepo) : super(InitialState());
  final DrawerRepo drawerRepo;
  int currentPage = 0;
  var page = [];

  void fetchDrawerList() {
    page = drawerRepo.getListItemDrawer();
    emit(GetListItemDrawer());
  }

  void changePageDrawer(int value) {
    currentPage = value;
    emit(ChangePageDrawer());
  }
}
