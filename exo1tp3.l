%{
#include<stdio.h>
int cnp=0;
int cpi=0;
int cnc=0;
%}

chiffre [0-9]
%%

{chiffre}*(0|2|4|6|8) {cnp++;}
{chiffre}*(1|3|5|7|9) {cpi++;}
... {cnc++;}
.+ {printf("la chaiine %s n'appartient a aucun langage\n",yytext);}
%%
int main()
{

printf("Exercice 1 TP3:\n");
yylex();
printf("le nommbre d'occurences des nombres pairs est :%d\n",cnp);
printf("le nommbre d'occurences des nombres impairs est :%d\n",cpi);
printf("le nommbre d'occurences des chaines de longueur 3 :%d\n",cnc);
return 0;
}
