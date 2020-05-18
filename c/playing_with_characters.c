#include <stdio.h>
#include <string.h>
#include <math.h>
#include <stdlib.h>

int main()
{
    char c;
    char s[1024];
    char s2[1024];
    scanf("%c", &c);
    scanf("%s", s);
    scanf("\n");
    scanf("%[^\n]", s2);
    printf("%c\n", c);
    printf("%s\n", s);
    printf("%s\n", s2);
    /* Enter your code here. Read input from STDIN. Print output to STDOUT */
    return 0;
}
