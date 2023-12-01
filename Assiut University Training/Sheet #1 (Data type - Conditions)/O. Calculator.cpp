#include <bits/stdc++.h>
using namespace std;

int main(){
    string n1, n2, op;
    string s; cin >> s;

    for(int i = 0; i < s.size(); i++){
        if(s[i] == '+' or s[i] == '-' or s[i] == '*' or s[i] == '/'){
            op = s[i];
            continue;
        }

        if(op.size() == 0) n1 += s[i];
        else n2 += s[i];
    }

    int a, b;
    a = stoi(n1);
    b = stoi(n2);

    if(op == "+") cout << a + b << endl;
    else if(op == "-") cout << a - b << endl;
    else if(op == "*") cout << a * b << endl;
    else cout << a / b << endl;
}
