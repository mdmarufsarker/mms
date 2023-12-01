#include<stdio.h>

int main(){
    int i = 1, j = 7;

    while(i <= 9){
        //I=1 J=7
        printf("I=%d J=%d\n", i, j);
        j--;
        if(j == 4){
            i += 2;
            j = 7;        
        }
    }
}
