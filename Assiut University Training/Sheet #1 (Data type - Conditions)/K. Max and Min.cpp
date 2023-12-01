#include <bits/stdc++.h>
using namespace std;

int main(){
    int a, b, c;
    cin >> a >> b >> c;

//    cout << min(min(a, b), c) << " " << max(max(a, b), c) << endl;
    cout << min({a, b, c}) << " " << max({a, b, c}) << endl;
}
