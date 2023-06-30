import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
  @override
  void emit(HomeState state) {
    // TODO: implement emit
    super.emit(HomeState(solDice: state.solDice));
  } final random = Random().nextInt(6) + 1;
                      solDice = random;
    
}
