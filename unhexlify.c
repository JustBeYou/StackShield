#include <stdio.h>
#include <string.h>
#include <stdlib.h>

char a2v(char c)
{
    if ((c>='0')&&(c<='9'))
    {
        printf("A %d\n", c - '0');
        return c-'0';
    }
    if ((c>='a')&&(c<='f'))
    {
        printf("B %d\n", c - 'a' + 10);
        return c-'a'+10;
    }
    else return 0;
}

char *unhexlify(char *hstr)
{
    char *bstr = malloc((strlen(hstr) / 2) + 1);
   
    printf("%p %s\n", bstr, bstr);

    int j = 0;
    for (int i = 0; i < (int)strlen(hstr); i += 2)
    {
        printf("%c %d %c %d\n", hstr[i], a2v(hstr[i]), hstr[i+1], a2v(hstr[i+1]));
        bstr[j++] = (a2v(hstr[i])<<4) + a2v(hstr[i+1]);
    }
    bstr[j] = '\0';
    printf("%p %s\n", bstr, bstr);
    return bstr;
}
int main() {
    printf("%s\n", unhexlify("414141"));

    return 0;
}
