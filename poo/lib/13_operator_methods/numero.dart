class Numero {
  int i;

  Numero(this.i);

  Numero operator +(Numero numero2) {
    print('$i + ${numero2.i} = ${Numero(i + numero2.i).i}');
    return Numero(i + numero2.i);
  }

  Numero operator -(Numero numero2) {
    print('$i - ${numero2.i} = ${Numero(i - numero2.i).i}');
    return Numero(i - numero2.i);
  }
}
