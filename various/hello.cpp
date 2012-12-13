#include <iostream>

using namespace std;

tempalte <typename T>
class Foo{
  T data;
  public:
    T get(){return data;}
    void set(T t){ data = t;}
};

int main()
{
  cout<<"hello world"<<endl;
}
