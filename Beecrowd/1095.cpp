#include <bits/stdc++.h>
using namespace std;

int main(){
    int i = 1, j = 60;

    while(j >= 0){
        // printf("I=%d J=%d\n", i, j);
        cout << "I=" << i << " " << "J=" << j << endl;
        
        i += 3;
        j -= 5;
    }
}
