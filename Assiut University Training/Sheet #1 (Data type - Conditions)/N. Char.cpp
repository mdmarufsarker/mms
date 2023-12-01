#include <bits/stdc++.h>
using namespace std;

int main(){
    char ch;
    cin >> ch;

    // way 1
//    if(ch >= 'A' and ch <= 'Z')
//        cout << (char) tolower(ch) << endl;
//    else cout << (char) toupper(ch) << endl;

    // way 2
    if(ch >= 65 and ch <= 90) cout << (char)(ch + 32) << endl;
    else cout << (char) (ch - 32) << endl;
}
