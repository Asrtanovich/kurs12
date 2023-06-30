import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeState());

  void koshuu() {
    emit(HomeState(san: state.san! + 1));
    // text++;
  }

  void kemituu() {
    emit(HomeState(san: state.san! - 1));
  }

  // void ozgort(bool ozgoruunuBer) {
  //   if (ozgoruunuBer == true) {
  //     san++;
  //   } else {
  //     san--;
  //   }
  // }
}
