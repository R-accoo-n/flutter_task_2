mixin PassYear {
  int currentAge = 0;

  //void passYear() => currentAge++;
  Function passYears(int i){
    return () => currentAge + i;
  }
}