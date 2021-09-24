%{
#include <stdio.h>
#include "calc.tab.h"
%}

digit	([0-9])
white [ \t]+
integer [+-]{digit}+
floating {digit}+[.]{digit}*|{digit}*[.]{digit}+

%%
%option yylineno ;

{white} { }
"print"  {return(t_print);}
({digit}+|{integer}|{floating}) {
		yylval.float_val=atof(yytext);
		return (t_num);
		}


"+"	{return(t_add);}
"-"	{return(t_sub);}
";"	{return(t_semi);}
[\n]	{yylineno++;}
.	{printf("Lexical analysis error: '%c'\n", yytext[0]);}

%%

