// part 'home_state.dartt';
class HomeState extends Cubit<HomeState>{
  HomeCubit(): super (HomeState());
    void koshuu() {
    setState(() {
      san = san + 1;
      // text++;
    });
  }
    void kemituu() {
    setState(() {});
    san--;
  }
  
  void ozgort(bool ozgoruunuBer) {
    if (ozgoruunuBer == true) {
      setState(() {});
      san++;
    } else {
      san--;
    }
  }
}