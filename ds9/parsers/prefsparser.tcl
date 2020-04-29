package provide DS9 1.0

######
# Begin autogenerated taccle (version 1.3) routines.
# Although taccle itself is protected by the GNU Public License (GPL)
# all user-supplied functions are protected by their respective
# author's license.  See http://mini.net/tcl/taccle for other details.
######

namespace eval prefs {
    variable yylval {}
    variable table
    variable rules
    variable token {}
    variable yycnt 0
    variable yyerr 0
    variable save_state 0

    namespace export yylex
}

proc prefs::YYABORT {} {
    return -code return 1
}

proc prefs::YYACCEPT {} {
    return -code return 0
}

proc prefs::YYERROR {} {
    variable yyerr
    set yyerr 1
}

proc prefs::yyclearin {} {
    variable token
    variable yycnt
    set token {}
    incr yycnt -1
}

proc prefs::yyerror {s} {
    puts stderr $s
}

proc prefs::setupvalues {stack pointer numsyms} {
    upvar 1 1 y
    set y {}
    for {set i 1} {$i <= $numsyms} {incr i} {
        upvar 1 $i y
        set y [lindex $stack $pointer]
        incr pointer
    }
}

proc prefs::unsetupvalues {numsyms} {
    for {set i 1} {$i <= $numsyms} {incr i} {
        upvar 1 $i y
        unset y
    }
}

array set prefs::table {
  25:264,target 20
  11:264 shift
  7:264,target 20
  0:257 shift
  13:263 shift
  0:258 shift
  23:0,target 19
  5:0,target 4
  0:259 shift
  0:260 shift
  20:264,target 17
  19:264,target 9
  9:0 reduce
  2:264,target 5
  0:266,target 8
  0:261 shift
  31:263,target 32
  15:264 shift
  0:276,target 18
  0:262 shift
  10:258,target 2
  17:264 reduce
  14:264,target 23
  0:264 reduce
  0:265 shift
  20:264 reduce
  19:264 reduce
  2:264 reduce
  0:266 shift
  0:267 shift
  22:264 reduce
  4:264 reduce
  0:265,target 7
  0:268 shift
  24:263 shift
  6:0,target 7
  0:270 shift
  0:275,target 17
  0:269 shift
  20:0 reduce
  19:0 reduce
  10:257,target 1
  6:264 reduce
  0:271 shift
  2:0 reduce
  0:272 shift
  26:264 reduce
  23:264,target 19
  8:264 reduce
  7:262,target 6
  5:264,target 4
  0:273 shift
  28:263 shift
  0:274 shift
  6:0 reduce
  0:275 goto
  31:263 shift
  17:264,target 13
  0:264,target 11
  0:276 goto
  28:263,target 30
  0:274,target 16
  33:0,target 16
  0:278 goto
  33:264 reduce
  25:0,target 20
  19:277 goto
  12:264,target 12
  7:0,target 1
  17:0,target 13
  12:0 reduce
  7:261,target 5
  0:0,target 11
  10:0,target 1
  33:0 reduce
  26:264,target 21
  10:257 shift
  8:264,target 14
  0:273,target 15
  10:258 shift
  10:260 shift
  10:259 shift
  21:264,target 18
  10:261 shift
  10:275,target 22
  7:260,target 4
  7:259,target 3
  3:264,target 3
  32:263,target 33
  26:0,target 21
  21:0 reduce
  10:262 shift
  8:0,target 14
  3:0 reduce
  18:0,target 0
  1:0,target 2
  15:264,target 25
  10:264 reduce
  0:262,target 6
  0:272,target 14
  25:0 reduce
  12:264 reduce
  7:0 reduce
  10:264,target 1
  14:264 reduce
  7:258,target 2
  16:263 shift
  29:0 reduce
  9:0,target 15
  0:261,target 5
  20:0,target 17
  19:0,target 8
  7:257 shift
  6:264,target 7
  2:0,target 5
  0:271,target 13
  1:264 reduce
  12:0,target 12
  7:258 shift
  21:264 reduce
  10:275 goto
  7:260 shift
  7:259 shift
  3:264 reduce
  17:0 reduce
  7:261 shift
  7:257,target 1
  0:0 reduce
  1:264,target 2
  30:263,target 31
  23:264 reduce
  7:262 shift
  5:264 reduce
  25:264 reduce
  7:264 shift
  0:259,target 3
  0:260,target 4
  24:263,target 28
  22:0 reduce
  4:0 reduce
  0:270,target 12
  0:269,target 11
  33:264,target 16
  27:264 shift
  19:277,target 27
  9:264 reduce
  30:263 shift
  21:0,target 18
  10:262,target 6
  3:0,target 3
  32:263 shift
  27:264,target 29
  26:0 reduce
  9:264,target 15
  8:0 reduce
  10:0 reduce
  13:263,target 24
  0:258,target 2
  22:264,target 22
  4:264,target 6
  0:268,target 10
  0:278,target 19
  14:0 reduce
  10:261,target 5
  7:275 goto
  29:0,target 10
  22:0,target 22
  4:0,target 6
  14:0,target 23
  7:275,target 21
  18:0 accept
  11:264,target 23
  0:257,target 1
  1:0 reduce
  0:267,target 9
  10:260,target 4
  10:259,target 3
  23:0 reduce
  16:263,target 26
  5:0 reduce
}

array set prefs::rules {
  9,l 277
  11,l 278
  15,l 278
  20,l 278
  19,l 278
  2,l 275
  6,l 275
  12,l 278
  16,l 278
  21,l 278
  3,l 275
  7,l 275
  13,l 278
  0,l 279
  17,l 278
  22,l 278
  4,l 275
  8,l 276
  10,l 276
  14,l 278
  18,l 278
  1,l 275
  23,l 278
  5,l 275
}

array set prefs::rules {
  23,dc 1
  5,dc 1
  0,dc 1
  17,dc 2
  12,dc 1
  8,dc 1
  21,dc 2
  3,dc 1
  15,dc 1
  10,dc 3
  6,dc 1
  18,dc 2
  1,dc 0
  13,dc 1
  9,dc 0
  22,dc 2
  4,dc 1
  16,dc 7
  11,dc 0
  7,dc 1
  20,dc 2
  19,dc 2
  2,dc 1
  14,dc 1
}

array set prefs::rules {
  13,line 58
  7,line 48
  10,line 52
  22,line 67
  4,line 45
  18,line 63
  1,line 42
  15,line 60
  9,line 51
  12,line 57
  6,line 47
  21,line 66
  3,line 44
  17,line 62
  14,line 59
  8,line 51
  11,line 55
  23,line 68
  5,line 46
  20,line 65
  19,line 64
  2,line 43
  9,e 1
  16,line 61
}

array set prefs::lr1_table {
  14,trans {}
  33,trans {}
  1,trans {}
  18,trans {}
  23,trans {}
  5,trans {}
  27,trans {{264 29}}
  9,trans {}
  13,trans {{263 24}}
  32,trans {{263 33}}
  0,trans {{257 1} {258 2} {259 3} {260 4} {261 5} {262 6} {265 7} {266 8} {267 9} {268 10} {269 11} {270 12} {271 13} {272 14} {273 15} {274 16} {275 17} {276 18} {278 19}}
  17,trans {}
  22,trans {}
  4,trans {}
  26,trans {}
  8,trans {}
  12,trans {}
  31,trans {{263 32}}
  16,trans {{263 26}}
  21,trans {}
  3,trans {}
  10 {{22 {0 264} 1} {1 {0 264} 0} {2 {0 264} 0} {3 {0 264} 0} {4 {0 264} 0} {5 {0 264} 0} {6 {0 264} 0} {7 {0 264} 0}}
  11 {{19 {0 264} 1}}
  25,trans {}
  12 {{12 {0 264} 1}}
  7,trans {{257 1} {258 2} {259 3} {260 4} {261 5} {262 6} {264 20} {275 21}}
  13 {{16 {0 264} 1}}
  14 {{23 {0 264} 1}}
  15 {{20 {0 264} 1}}
  11,trans {{264 23}}
  30,trans {{263 31}}
  29,trans {}
  16 {{21 {0 264} 1}}
  0 {{0 0 0} {8 0 0} {10 0 0} {11 {0 264} 0} {12 {0 264} 0} {13 {0 264} 0} {14 {0 264} 0} {15 {0 264} 0} {16 {0 264} 0} {17 {0 264} 0} {18 {0 264} 0} {19 {0 264} 0} {20 {0 264} 0} {21 {0 264} 0} {22 {0 264} 0} {23 {0 264} 0} {1 {0 264} 0} {2 {0 264} 0} {3 {0 264} 0} {4 {0 264} 0} {5 {0 264} 0} {6 {0 264} 0} {7 {0 264} 0}}
  17 {{13 {0 264} 1}}
  1 {{2 {0 264} 1}}
  18 {{0 0 1}}
  2 {{5 {0 264} 1}}
  19 {{8 0 1} {10 0 1} {9 264 0}}
  20 {{17 {0 264} 2}}
  15,trans {{264 25}}
  3 {{3 {0 264} 1}}
  21 {{18 {0 264} 2}}
  4 {{6 {0 264} 1}}
  22 {{22 {0 264} 2}}
  5 {{4 {0 264} 1}}
  23 {{19 {0 264} 2}}
  20,trans {}
  6 {{7 {0 264} 1}}
  2,trans {}
  24 {{16 {0 264} 2}}
  19,trans {{277 27}}
  7 {{17 {0 264} 1} {18 {0 264} 1} {1 {0 264} 0} {2 {0 264} 0} {3 {0 264} 0} {4 {0 264} 0} {5 {0 264} 0} {6 {0 264} 0} {7 {0 264} 0}}
  25 {{20 {0 264} 2}}
  8 {{14 {0 264} 1}}
  26 {{21 {0 264} 2}}
  9 {{15 {0 264} 1}}
  27 {{10 0 2}}
  24,trans {{263 28}}
  28 {{16 {0 264} 3}}
  6,trans {}
  30 {{16 {0 264} 4}}
  29 {{10 0 3}}
  31 {{16 {0 264} 5}}
  32 {{16 {0 264} 6}}
  10,trans {{257 1} {258 2} {259 3} {260 4} {261 5} {262 6} {275 22}}
  33 {{16 {0 264} 7}}
  28,trans {{263 30}}
}

array set prefs::token_id_table {
  279,title {}
  264,line 16
  270,t 0
  269,t 0
  276,line 50
  265,title BGCOLOR
  274,t 0
  261,line 11
  257,t 0
  270,title OPEN
  269,title NANCOLOR
  273,line 28
  278,t 1
  257,line 7
  262,t 0
  274,title THREADS
  270,line 25
  269,line 24
  259,title ON
  260,title OFF
  266,t 0
  278,title {}
  error error
  271,t 0
  264,title string
  266,line 21
  278,line 54
  275,t 1
  error,line 40
  268,title IRAFALIGN
  258,t 0
  263,line 14
  error,title {}
  279,t 1
  275,line 41
  273,title THEME
  263,t 0
  259,line 9
  260,line 10
  258,title NO
  277,title {}
  272,line 27
  267,t 0
  263,title integer
  272,t 0
  268,line 23
  267,title CLOSE
  257 YES_
  276,t 1
  258 NO_
  259,t 0
  259 ON_
  260 OFF_
  260,t 0
  272,title SAVE
  261 TRUE_
  265,line 20
  262 FALSE_
  263 INT_
  277,line 51
  257,title YES
  264 STRING_
  264,t 0
  276,title {}
  265 BGCOLOR_
  262,line 12
  266 CLEAR_
  267 CLOSE_
  0,t 0
  0 {$}
  262,title FALSE
  268 IRAFALIGN_
  268,t 0
  274,line 29
  270 OPEN_
  269 NANCOLOR_
  error,t 0
  271 PRECISION_
  272 SAVE_
  258,line 8
  273,t 0
  273 THEME_
  266,title CLEAR
  274 THREADS_
  275 yesno
  271,line 26
  276 command
  277,t 1
  277 @PSEUDO1
  271,title PRECISION
  278 prefs
  261,t 0
  279 start'
  267,line 22
  275,title {}
  265,t 0
  279,line 69
  261,title TRUE
}

proc prefs::yyparse {} {
    variable yylval
    variable table
    variable rules
    variable token
    variable yycnt
    variable lr1_table
    variable token_id_table
    variable yyerr
    variable save_state

    set yycnt 0
    set state_stack {0}
    set value_stack {{}}
    set token ""
    set accepted 0
    set yyerr 0
    set save_state 0

    while {$accepted == 0} {
        set state [lindex $state_stack end]
        if {$token == ""} {
            set yylval ""
            set token [yylex]
            set buflval $yylval
	    if {$token>0} {
	        incr yycnt
            }
        }
        if {![info exists table($state:$token)] || $yyerr} {
	    if {!$yyerr} {
	        set save_state $state
	    }
            # pop off states until error token accepted
            while {[llength $state_stack] > 0 && \
                       ![info exists table($state:error)]} {
                set state_stack [lrange $state_stack 0 end-1]
                set value_stack [lrange $value_stack 0 \
                                       [expr {[llength $state_stack] - 1}]]
                set state [lindex $state_stack end]
            }
            if {[llength $state_stack] == 0} {
 
	        set rr { }
                if {[info exists lr1_table($save_state,trans)] && [llength $lr1_table($save_state,trans)] >= 1} {
                    foreach trans $lr1_table($save_state,trans) {
                        foreach {tok_id nextstate} $trans {
			    set ss $token_id_table($tok_id,title)
			    if {$ss != {}} {
			        append rr "$ss, "
                            }
                        }
                    }
                }
		set rr [string trimleft $rr { }]
		set rr [string trimright $rr {, }]
                yyerror "parse error, expecting: $rr"


                return 1
            }
            lappend state_stack [set state $table($state:error,target)]
            lappend value_stack {}
            # consume tokens until it finds an acceptable one
            while {![info exists table($state:$token)]} {
                if {$token == 0} {
                    yyerror "end of file while recovering from error"
                    return 1
                }
                set yylval {}
                set token [yylex]
                set buflval $yylval
            }
            continue
        }
        switch -- $table($state:$token) {
            shift {
                lappend state_stack $table($state:$token,target)
                lappend value_stack $buflval
                set token ""
            }
            reduce {
                set rule $table($state:$token,target)
                set ll $rules($rule,l)
                if {[info exists rules($rule,e)]} {
                    set dc $rules($rule,e)
                } else {
                    set dc $rules($rule,dc)
                }
                set stackpointer [expr {[llength $state_stack]-$dc}]
                setupvalues $value_stack $stackpointer $dc
                set _ $1
                set yylval [lindex $value_stack end]
                switch -- $rule {
                    1 { set _ 1 }
                    2 { set _ 1 }
                    3 { set _ 1 }
                    4 { set _ 1 }
                    5 { set _ 0 }
                    6 { set _ 0 }
                    7 { set _ 0 }
                    9 { global ds9; if {!$ds9(init)} {YYERROR} else {yyclearin; YYACCEPT} }
                    11 { PrefsDialog }
                    12 { PrefsDialog }
                    14 { ClearPrefs }
                    15 { PrefsDialogClose }
                    16 { ProcessCmdSet pds9 prec,linear $2; ProcessCmdSet pds9 prec,deg $3; ProcessCmdSet pds9 prec,hms $4;ProcessCmdSet pds9 prec,dms $5; ProcessCmdSet pds9 prec,arcmin $6; ProcessCmdSet pds9 prec,arcsec $7 PrefsPrecision }
                    17 { ProcessCmdSet pds9 bg $2 PrefsBgColor }
                    18 { ProcessCmdSet pds9 bg,use $2 PrefsBgColor }
                    19 { ProcessCmdSet pds9 nan $2 PrefsNanColor }
                    20 { ProcessCmdSet pds9 theme $2 ThemeChange }
                    21 { ProcessCmdSet ds9 threads $2 ChangeThreads }
                    22 { ProcessCmdSet pds9 iraf $2 PrefsIRAFAlign }
                    23 { PrefsDialogSave }
                }
                unsetupvalues $dc
                # pop off tokens from the stack if normal rule
                if {![info exists rules($rule,e)]} {
                    incr stackpointer -1
                    set state_stack [lrange $state_stack 0 $stackpointer]
                    set value_stack [lrange $value_stack 0 $stackpointer]
                }
                # now do the goto transition
                lappend state_stack $table([lindex $state_stack end]:$ll,target)
                lappend value_stack $_
            }
            accept {
                set accepted 1
            }
            goto -
            default {
                puts stderr "Internal parser error: illegal command $table($state:$token)"
                return 2
            }
        }
    }
    return 0
}

######
# end autogenerated taccle functions
######

proc prefs::yyerror {msg} {
     variable yycnt
     variable yy_current_buffer
     variable index_

     ParserError $msg $yycnt $yy_current_buffer $index_
}
