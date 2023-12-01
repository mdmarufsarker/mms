#include <bits/stdc++.h>
using namespace std;

int main(){
    char ch;
    cin >> ch;

    // way 1
//    if(ch >= 'A' and ch <= 'Z')
//        cout << "ALPHA\nIS CAPITAL" << endl;
//    else if(ch >= 'a' and ch <= 'z')
//            cout << "ALPHA\nIS SMALL" << endl;
//    else cout << "IS DIGIT" << endl;

    // way 2
//    if(ch >= 65 and ch <= 90) cout << "ALPHA\nIS CAPITAL" << endl;
//    else if(ch >= 97 and ch <= 122) cout << "ALPHA\nIS SMALL" << endl;
//    else cout << "IS DIGIT" << endl;

    // way 3
    if(isalpha(ch)){
        cout << "ALPHA" << endl;
        if(isupper(ch)) cout << "IS CAPITAL" << endl;
        else cout << "IS SMALL" << endl;
    }else cout << "IS DIGIT" << endl;
}
