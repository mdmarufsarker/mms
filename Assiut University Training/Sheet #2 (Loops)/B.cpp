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

    if (n == 1) {
        cout << -1 << endl;
        return;
    }

    for (int i = 2; i <= n; i += 2) {
        cout << i << endl;
    }
}

int main() {
    maruf();
    solve();
}