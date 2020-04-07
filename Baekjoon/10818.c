#include <stdio.h>

int main()
{
    int num;
    scanf("%d", &num);

    int temp;
    scanf("%d", &temp);
    int max = temp;
    int min = temp;

    for(int i = 0; i < num-1; i++) {
        scanf("%d", &temp);
        if (max < temp) {
            max = temp;
        }
        if (min > temp) {
            min = temp;
        }
    }

    printf("%d %d", min, max);

    return 0;
}
