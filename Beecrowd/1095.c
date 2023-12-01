#include <stdio.h>

int main(){
    int i = 1, j = 60;

    while(j >= 0){
        // I=1 J=60
        printf("I=%d J=%d\n", i, j);
        
        i += 3;
        j -= 5;
    }
}
