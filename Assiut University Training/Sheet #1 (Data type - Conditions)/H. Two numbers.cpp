#include <bits/stdc++.h>
using namespace std;

int main(){
    int a, b;
    cin >> a >> b;

    cout << "floor " << a << " / " << b << " = " << a / b << endl;
    cout << "ceil " << a << " / " << b << " = " << ceil((double)a / b) << endl;
    cout << "round " << a << " / " << b << " = " << round((double)a / b) << endl;
}
