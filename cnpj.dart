main() {
/*
O CNPJ tem a configuração XX.XXX.XXX/XXXX-XX, onde os primeiros oito dígitos são o número-base, os quatro seguintes o número 
de ordem das filiais da empresa, o penúltimo é o DV (Dígito de Verificação) módulo 11 (v. abaixo) dos doze dígitos anteriores 
e o último é o DV módulo 11 dos treze dígitos anteriores.
Outra particularidade é que o oitavo dígito era DV módulo 10 (v. abaixo) dos sete anteriores, isso para os CNPJ emitidos anteriormente a 1993.
A partir daí, a regra foi abandonada, pois o oitavo dígito foi incorporado, para ampliar a capacidade de cadastros (de 10 milhões, 
a capacidade passou para 100 milhões de números possíveis).



O que é DV módulo 11 e o que é DV módulo 10?

DV (Dígito de Verificação), também denominado número-controle, são dígitos incorporados a números para possibilitar a detecção de erros 
de digitação, no ato.
Recurso muito difundido, por exemplo, na numeração de contas de depósitos bancários.

No caso do CNPJ, o DV módulo 11 corresponde ao resto da divisão por 11 do somatório da multiplicação de cada algarismo da base 
respectivamente por 9, 8, 7, 6, 5, 4, 3, 2, 9, 8, 7, 6 e 5, a partir da unidade.
O resto 10 é considerado 0 (algumas instituições, como o Banco do Brasil, tratam o 10, em seus números de contas, como "X").

O DV módulo 10 corresponde ao número que faltar para inteirar múltiplo de 10, em relação ao somatório da multiplicação de cada algarismo 
da base respectivamente por 2, 1, 2, 1, 2, 1 e 2, a partir da unidade, sendo que em cada multiplicação valores superiores a 9 deverão sofrer 
a operação "noves fora".

Veja, abaixo, exemplo de cálculo de DV módulo 11 (o mais usado pelos bancos) e de DV módulo 10 para o CNPJ nº 18781203/0001:

1    8    7    8   1   2   0   3   0   0   0   1               
x    x    x    x   x   x   x    x   x   x   x   x               
6    7    8    9   2   3   4    5   6   7   8   9            
-   --   --   --   -   -   -  ---   -   -   -   -                   
6 + 56 + 56 + 72 + 2 + 6 + 0 + 15 + 0 + 0 + 0 + 9 = 222 ÷ 11 = 20, com resto 2


1    8    7    8   1   2   0    3   0   0   0   1    2
x    x    x    x   x   x   x    x   x   x   x   x    x
5    6    7    8   9   2   3    4   5   6   7   8    9
-   --   --   --   -   -   -   --   -   -   -   -   --
5 + 48 + 49 + 64 + 9 + 4 + 0 + 12 + 0 + 0 + 0 + 8 + 18 = 217 ÷ 11 = 19, com resto 8

Portanto, CNPJ+DV = 18.781.203/0001-28

Conferência do oitavo dígito:

1   8       7   8   1   2    0 
x   x       x   x   x   x    x
2   1       2   1   2   1    2
-   -   -----   -   -   -    -
2 + 8 + 1 + 4 + 8 + 2 + 2  + 0 = 27, para 30 = 3
*/
}
