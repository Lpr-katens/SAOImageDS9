%{
%}

#include yesno.tin
#include string.tin
#include def.tin

%start command

%%

#include yesno.trl

command : align 
 | align {yyclearin; YYACCEPT} STRING_
 ;


align : yesno {ProcessCmdSet current align $1 AlignWCSFrame}
 ;

%%

proc align::yyerror {msg} {
     variable yycnt
     variable yy_current_buffer
     variable index_

     ParserError $msg $yycnt $yy_current_buffer $index_
}
