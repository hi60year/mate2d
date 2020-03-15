﻿grammar mate2d_Body;
//主要是设计语法
//做一个宏替换器

/*
 * Parser Ruless
 */
 
body
    : (AnyWord|CppSymbols)+
;


CppSymbols 
    : '+'
    | '-'
    | '*'
    | '/'
    | '='
    | '!'
    | '#'
    | '%'
    | '^'
    | '&'
    | '('
    | ')'
    | '{'
    | '}'
    | '['
    | ']'
    | '\\'
    | '/'
    | ':'
    | ';'
    | '\"'
    | '\''
    | '<'
    | '>'
    | '?'
    | ','
    | '.'
;

WS
	: ( '\t' | ' ' | '\r' | '\n' )+   -> skip
;

AnyWord
    : ~['@'|'`'|'$'|'\t'|' '|'\r'|'\n']+
;