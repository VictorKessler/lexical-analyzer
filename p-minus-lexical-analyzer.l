%{
    #include <stdio.h>
%}

%option noyywrap

inteiro[0-9]+
real[0-9\.0-9]+
ID[a-zA-Z][a-zA-Z0-9]*
whitespace[ ]+
tab[\t]+
newline[\n]

%%
"se" {printf("PALAVRA-CHAVE: 'se' determina inicio da estrutura de decisao: %s\n", yytext);}

"entao" {printf("PALAVRA-CHAVE: 'entao' determina bloco a ser executado caso a decisao seja verdadeira: %s\n", yytext);}

"senao" {printf("PALAVRA-CHAVE: 'senao' determina bloco a ser executado caso a decisao seja falsa: %s\n", yytext);}

"enquanto" {printf("PALAVRA-CHAVE: 'enquanto' Executa o bloco de comandos seguintes enquanto a condicao for verdadeira: %s\n", yytext);}

"repita" {printf("PALAVRA-CHAVE: 'repita' Executa o bloco de comandos seguintes ate que a condicao testada por 'ate' seja verdadeira: %s\n", yytext);}

"ate" {printf("PALAVRA-CHAVE: 'ate' Teste para execucao da repeticao 'repita..ate': %s\n", yytext);}

"ler" {printf("PALAVRA-CHAVE: 'ler' Rotina para entrada de dados: %s\n", yytext);}

"mostrar" {printf("PALAVRA-CHAVE: 'mostrar' Rotina para mostrar dados: %s\n", yytext);}

"inteiro" {printf("PALAVRA-CHAVE: 'inteiro' Declaracao de variavel inteira: %s\n", yytext);}

"real" {printf("PALAVRA-CHAVE: 'real' Declaracao de variavel de ponto flutuante: %s\n", yytext);}

"+" {printf("Operacao de soma: %s\n", yytext);}

"-" {printf("Operacao de subtracao: %s\n", yytext);}

"*" {printf("Operacao de multiplicacao: %s\n", yytext);}

"/" {printf("Operacao de divisao: %s\n", yytext);}

"&&" {printf("Operador logico 'E': %s\n", yytext);}

"||" {printf("Operador logico 'OU': %s\n", yytext);}

"<" {printf("Operador de comparacao menor que: %s\n", yytext);}

"<=" {printf("Operador de comparacao menor ou igual: %s\n", yytext);}

">" {printf("Operador de comparacao maior que: %s\n", yytext);}

">=" {printf("Operador de comparacao maior ou igual: %s\n", yytext);}

"==" {printf("Operador de comparacao igual: %s\n", yytext);}

"!=" {printf("Operador de comparacao diferente: %s\n", yytext);}

"=" {printf("Operador de atribuicao: %s\n", yytext);}

";" {printf("Separador de comandos: %s\n", yytext);}

"," {printf("Separador de identificadores: %s\n", yytext);}

"(" {printf("Abre bloco de expressao: %s\n", yytext);}

")" {printf("Fecha bloco de expressao: %s\n", yytext);}

"{" {printf("Inicia novo bloco de comandos: %s\n", yytext);}

"}" {printf("Fecha bloco de comandos: %s\n", yytext);}

{inteiro} {printf("Numero inteiro: %s\n", yytext);}

{real} {printf("Numero de ponto flutuante: %s\n", yytext);}

{ID} {printf("IDENTIFICADOR: %s\n", yytext);}

{whitespace} {}

{newline} {}

{tab} {}

. {printf("ERRO: Lexema nao reconhecido: %s\n", yytext);}

%%

int main(int argc, char **argv) {
    yylex();
    return 0;
}