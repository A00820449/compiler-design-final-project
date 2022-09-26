%%

"if"                {return 'R_IF';}
"else"              {return 'R_ELSE';}
"then"              {return 'R_THEN';}
"var"               {return 'R_VAR';}
"program            {return 'R_PROGRAM';}
"function"          {return 'R_FUNCTION';}
"int"               {return 'R_INT';}
"float"             {return 'R_FLOAT';}
"return"            {return 'R_RETURN';}
"read"              {return 'R_READ';}
"print"             {return 'R_PRINT';}
"while"             {return 'R_WHILE';}
"from"              {return 'R_FROM';}
"to"                {return 'R_TO';}
"do"                {return 'R_DO';}


"("                 {return 'OPEN_PARENTHESIS';}
")"                 {return 'CLOSED_PARENTHESIS';}
"["                 {return 'OPEN_BRACKET';}
"]"                 {return 'CLOSED_BRACKET';}
[{]                 {return 'OPEN_BRACES';}
[}]                 {return 'CLOSED_BRACES';}
":"                 {return 'COLON';}
";"                 {return 'SEMICOLON';}


[+]                 {return 'PLUS';}
[-]                 {return 'MINUS';}
[*]                 {return 'MULT';}
[/]                 {return 'DIV';}
"="                 {return 'ASSIGN';}

\>                  {return 'GT';}
\<                  {return 'LT';}
"[>]="              {return 'GE';}
"[<]="              {return 'LE';}
"=="                {return 'EQ';}
"!="                {return 'NOT_EQ';}

"!"                 {return 'NOT';}
"&"                 {return 'AND';}
[|]                 {return 'OR';}

"true"              {return 'C_TRUE';}
"false"             {return 'C_FALSE';}
[0-9]+\.[0-9]+      {return 'C_FLOAT';}
[0-9]               {return 'C_INT';}
\"([^\\\"]|\\.)*\"  {return 'C_STRING';}

[A-Za-z_][A-Za-z0-9_]*  {return 'ID';}

\s+                 {/* skip whitespace */}
.                   {throw new Error('Illegal character');}
<<EOF>>             {return 'EOF';}