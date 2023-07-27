class demo{

  int a = 10;
  int b = 20;

  void showA()
  {
    print("The value of a is $a");
  }

  void showB()
  {
    print("The value of b is $b");
  }

}

void main()
{

  demo obj = demo();

  obj..a=20..showA()..b=10..showB();
}