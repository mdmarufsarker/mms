#include <bits/stdc++.h>
using namespace std;

int main(){
    long long n, sum = 0;
    cin >> n;
    
//  O(n)
//  for(long long i = 1; i <= n; i++){
//      sum += i;
//  }

    sum = n * (n + 1) / 2; // O(1)

    cout << sum << endl;
}
