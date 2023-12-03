// In the name of Allah, Most Merciful
// Written by: Md. Maruf Sarker

#include <bits/stdc++.h>
using namespace std;

#define ll long long
#define endl "\n"
#define sp " "

#define Maruf ios_base::sync_with_stdio(0);cin.tie(0);cout.tie(0);

void maruf() {
    ios_base::sync_with_stdio(0); cin.tie(0); cout.tie(0);
#ifndef ONLINE_JUDGE
    freopen("input.txt", "r", stdin);
    freopen("output.txt", "w", stdout);
#endif
}

void solve() {
    int n;
    cin >> n;

    vector<int> v(n);

    int even = 0, odd = 0, pos = 0, neg = 0;
    for (auto &x : v) {
        cin >> x;

        if (x & 1) {
            odd++;
            if (x > 0) pos++;
            if (x < 0) neg++;
        } else {
            even++;
            if (x > 0) pos++;
            if (x < 0) neg++;
        }
    }

    cout << "Even: " << even << endl;
    cout << "Odd: " << odd << endl;
    cout << "Positive: " << pos << endl;
    cout << "Negative: " << neg << endl;
}

int main() {
    maruf();
    solve();
}